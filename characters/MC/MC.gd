extends KinematicBody
var player_active = true
var spin = 0.05
var sprintspeed = 10
var flag = 1
var initial_position
var count = 0
var check = 1
export(bool) var immobile

# Start
# Movement variables
export var speed = 7.0
export var acceleration = 0.15
export var friction = 0.1
export var gravity = 30.0
export var jump_force = 12.0
var velocity = Vector3.ZERO
export var inertia = 50

# Mouse look variables
export var mouse_sensitivity = 0.2
onready var camera = $CameraPivot/Camera
var camera_x_rotation = 0
#END

func _ready():
	# Capture mouse for FPS camera control
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)

func _input(event):
	# Handle mouse look
	if event is InputEventMouseMotion and Input.get_mouse_mode() == Input.MOUSE_MODE_CAPTURED:
		# Rotate the player (left/right)
		rotate_y(deg2rad(-event.relative.x * mouse_sensitivity))
		
		# Rotate the camera (up/down)
		var change = -event.relative.y * mouse_sensitivity
		camera_x_rotation += change
		# Clamp the up/down rotation to prevent over-rotation
		camera_x_rotation = clamp(camera_x_rotation, -90, 90)
		camera.rotation_degrees.x = camera_x_rotation
	
	# Toggle mouse capture with Escape
	if event.is_action_pressed("mouse_toggle"):
		if Input.get_mouse_mode() == Input.MOUSE_MODE_CAPTURED:
			Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
		else:
			Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)

func _physics_process(delta):
	# Get input direction
	var input_dir = Vector3.ZERO
	input_dir.x = Input.get_action_strength("Right") - Input.get_action_strength("Left")
	input_dir.z = Input.get_action_strength("Backward") - Input.get_action_strength("Forward")
	input_dir = input_dir.normalized()
	
	# Transform input direction relative to player rotation
	var movement_dir = input_dir.rotated(Vector3.UP, rotation.y)
	
	# Handle jumping
	if is_on_floor():
		if Input.is_action_just_pressed("ui_accept"):  # Space bar
			velocity.y = jump_force
	else:
		# Apply gravity
		velocity.y -= gravity * delta
	
	# Calculate horizontal velocity
	var horizontal_velocity = Vector3(velocity.x, 0, velocity.z)
	var target_velocity = movement_dir * speed
	
	# Apply acceleration and friction
	if input_dir != Vector3.ZERO:
		horizontal_velocity = horizontal_velocity.linear_interpolate(target_velocity, acceleration)
	else:
		horizontal_velocity = horizontal_velocity.linear_interpolate(Vector3.ZERO, friction)
	
	# Preserve vertical velocity
	velocity.x = horizontal_velocity.x
	velocity.z = horizontal_velocity.z
	
	# Move the character
	velocity = move_and_slide(velocity, Vector3.UP, false, 4, PI/4, false)
	
	for index in get_slide_count():
		var collision = get_slide_collision(index)
		if collision.collider.is_in_group("bodies"):
			collision.collider.apply_central_impulse(-collision.normal * inertia)
	
	#if jump and is_on_floor():
func _unhandled_input(event):
	if event is InputEventMouseMotion:
		if event.relative.x > 0:
			rotate_y(-lerp(0, spin, event.relative.x/12.5))
		if event.relative.x < 0:
			rotate_y(-lerp(0, spin, event.relative.x/12.5))

func toggle_the_player(on):
	var player = get_node("/root/RootScene/Node2D/Enviroment/MC")
	if player:
		player.set_active(on)

func set_active(active):
	player_active = active
	#print(player_active)
	set_physics_process(active)
	set_process(active)
	set_process_input(active)

func _on_Zach_body_entered(_body):
	pass

func _on_Timer2_timeout():
	count = count+1
