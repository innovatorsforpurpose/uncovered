extends KinematicBody

export (int) var speed = 50.0
export var jump_impulse = 20.0
export var fall_acceleration = 70
var player_active = true

func _on_MC_ready():
	pass 

func _physics_process(delta):
	var direction = Vector3.ZERO
	if not player_active:
		direction = 0
		return 
	if Input.is_action_pressed("Right"):
		direction.x += speed
	if Input.is_action_pressed("Left"):
		direction.x -= speed
	if Input.is_action_pressed("Backward"):
		direction.z += speed
	if Input.is_action_pressed("Forward"):
		direction.z -= speed
	if is_on_floor() and Input.is_action_pressed("jump"):
		direction.y = jump_impulse
	direction.y -= fall_acceleration * delta 
	move_and_slide(direction, Vector3.UP) 
	for index in get_slide_count():
		var _collision = get_slide_collision(index)

func set_active(active):
	player_active = active
	# # print(player_active)
	set_physics_process(active)
	set_process(active)
	set_process_input(active)
