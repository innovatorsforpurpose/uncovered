extends KinematicBody
var gravity = Vector3.DOWN * 15
var walkspeed = 5
var speed
var jump_speed = 10
var spin = 0.05
var velocity = Vector3.ZERO
var jump = false
var sprintspeed = 10
func get_input():
	if Input.is_action_pressed("shift"):
		speed = sprintspeed
		gravity = Vector3.DOWN * 15
	else:
		speed = walkspeed
		gravity = Vector3.DOWN * 15 
	var vy = velocity.y
	velocity = Vector3()
	if Input.is_action_pressed("move_forward"):
		velocity += -transform.basis.z * speed
	if Input.is_action_pressed("move_back"):
		velocity += transform.basis.z * speed
	if Input.is_action_pressed("strafe_right"):
		velocity += transform.basis.x * speed
	if Input.is_action_pressed("strafe_left"):
		velocity += -transform.basis.x * speed
	velocity.y = vy
	jump = false
	if Input.is_action_just_pressed("jump"):
		jump = true
func _physics_process(delta):
	velocity += gravity * delta
	get_input()
	find_collisions()
	velocity = move_and_slide(velocity, Vector3.UP)
	if jump and is_on_floor():
		velocity.y = jump_speed
func _unhandled_input(event):
	if event is InputEventMouseMotion:
		if event.relative.x > 0:
			rotate_y(-lerp(0, spin, event.relative.x/10))
		elif event.relative.x < 0:
			rotate_y(-lerp(0, spin, event.relative.x/10))
var initial_position
func _ready():
	initial_position = get_global_transform().origin
func _process(_delta):
	if Input.is_action_just_pressed("reset"):
		set_translation(initial_position)
		speed = 2.5

func find_collisions():
	for index in get_slide_count():
		var collision = get_slide_collision(index)
		var collider = collision.collider
		var dialogue = get_node("../Dialogue")
		if collider == get_node("../RakimCyllinder"):
			pass
