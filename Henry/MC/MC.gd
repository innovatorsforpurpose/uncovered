extends KinematicBody2D

export (int) var speed = 200

var velocity = Vector2()
var player_active = true

func get_input():
	if not player_active:
		velocity = 0 
		return 
	velocity = Vector2()
	if Input.is_action_pressed('Right'):
		velocity.x += speed
	if Input.is_action_pressed('Left'):
		velocity.x -= speed
	if Input.is_action_pressed('Down'):
		velocity.y += speed
	if Input.is_action_pressed('Up'):
		velocity.y -= speed

func _physics_process(_delta):
	get_input()
	move_and_slide(velocity)
	
	for index in get_slide_count():
		var _collision = get_slide_collision(index)
		
func set_active(active):
	player_active = active
	print(player_active)
	set_physics_process(active)
	set_process(active)
	set_process_input(active)


