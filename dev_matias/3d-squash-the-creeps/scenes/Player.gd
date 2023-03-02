extends CharacterBody3D

@export var speed = 14.0
@export var jump_impulse = 20.0
@export var gravity = 75.0
@export var velocity = Vector3.ZERO

func _physics_process(delta):
	var direction = Vector3.ZERO
	if Input.is_action_pressed("right"):
		direction.x += 1
	if Input.is_action_pressed("left"):
		direction.x -= 1

	if Input.is_action_pressed("forward"):
		direction.z -= 1
	if Input.is_action_pressed("backward"):
		direction.z += 1
		
	if direction != Vector3.ZERO:
		direction = direction.normalized()
		$Pivot.look_at(position + direction, Vector3.UP)
		
	
	if is_on_floor() and Input.is_action_pressed("jump"):
		velocity.y += jump_impulse

	velocity.y -= gravity * delta
	velocity.x = direction.x * speed
	velocity.z = direction.z * speed
	
	set_velocity(velocity)
	set_up_direction(Vector3.UP)
	move_and_slide()
