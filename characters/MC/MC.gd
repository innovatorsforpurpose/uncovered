extends KinematicBody
var player_active = true
var gravity = Vector3.DOWN * 15
var walkspeed = 5
var speed
var jump_speed = 10
var jump_impulse = 15
var spin = 0.05
var velocity = Vector3.ZERO
#var jump = false
var sprintspeed = 10
var flag = 1
var initial_position
var count = 0

func _ready():
	initial_position = get_global_transform().origin
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
	
func get_input():
	if Input.is_action_pressed("shift"):
		speed = sprintspeed
		gravity = Vector3.DOWN * 98
	else:
		speed = walkspeed
		gravity = Vector3.DOWN * 98 
	var vy = velocity.y
	velocity = Vector3()
	if Input.is_action_pressed("move_forward"):
		velocity += -transform.basis.z * speed
	if Input.is_action_pressed("move_back"):
		velocity += transform.basis.z * speed
	if Input.is_action_pressed("move_right"):
		velocity += transform.basis.x * speed
	if Input.is_action_pressed("move_left"):
		velocity += -transform.basis.x * speed
		
	if Input.is_action_just_pressed("mouse_toggle") and Input.get_mouse_mode() == Input.MOUSE_MODE_CAPTURED:
		Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	elif Input.is_action_just_pressed("mouse_toggle"):
		Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
		
	velocity.y = vy
func _physics_process(delta):
	if is_on_floor() and Input.is_action_just_pressed("jump"):
		velocity.y += jump_impulse
	velocity += gravity * delta
	get_input()
	velocity = move_and_slide(velocity, Vector3.UP)
	#if jump and is_on_floor():
func _unhandled_input(event):
	if event is InputEventMouseMotion:
		if event.relative.x > 0:
			rotate_y(-lerp(0, spin, event.relative.x/12.5))
		if event.relative.x < 0:
			rotate_y(-lerp(0, spin, event.relative.x/12.5))

func set_active(active):
	player_active = active
	#print(player_active)
	set_physics_process(active)
	set_process(active)
	set_process_input(active)


func _on_Zach_body_entered(body):
	pass

func _on_Timer2_timeout():
	count = count+1
