extends KinematicBody
var velocity = Vector3.ZERO
var speed = 10
var spin = 0.05
var direction = Vector3.ZERO

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _physics_process(_delta):
		if direction != Vector3.ZERO:
			direction = direction.normalized()
		print(translation)
		look_at(translation + direction, Vector3.UP)
		
		velocity = Vector3.ZERO
		if Input.is_action_pressed("move_forward"):
			velocity += -transform.basis.z * speed
		if Input.is_action_pressed("move_back"):
			velocity += transform.basis.z * speed
		if Input.is_action_pressed("move_right"):
			velocity += transform.basis.x * speed
		if Input.is_action_pressed("move_left"):
			velocity += -transform.basis.x * speed
		velocity = move_and_slide(velocity, Vector3.UP)
		
#func _unhandled_input(event):
#		if event is InputEventMouseMotion:
#			if event.relative.x > 0:
#				rotate_y(-lerp(0, spin, event.relative.x/12.5))
#			if event.relative.x < 0:
#				rotate_y(-lerp(0, spin, event.relative.x/12.5))
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
