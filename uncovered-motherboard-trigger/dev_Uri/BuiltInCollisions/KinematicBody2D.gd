extends KinematicBody2D

const RUN_SPEED = 7
const JUMP_SPEED = -10
const GRAVITY = 25
const MAX_CLONES = 500

var velocity = Vector2()
var clones = []
onready var scene2d = get_node("/root/Node2")

func get_input() -> bool:
	velocity.x = 0
	var input = false
	
	if Input.is_key_pressed(KEY_RIGHT): # Move right
		input = true
		if Input.is_key_pressed(KEY_SHIFT):
			velocity.x += 1
		else:
			velocity.x += RUN_SPEED
	if Input.is_key_pressed(KEY_LEFT): # Move left
		input = true
		if Input.is_key_pressed(KEY_SHIFT):
			velocity.x -= 1
		else:
			velocity.x -= RUN_SPEED
	if Input.is_key_pressed(KEY_DOWN): # Move down
		input = true
		velocity.y += 25
	if Input.is_key_pressed(KEY_R):
		input = true
		position = Vector2(0, -100)
	if Input.is_key_pressed(KEY_SPACE):
		input = true
		velocity.y += JUMP_SPEED/10
	if Input.is_key_pressed(KEY_W):
		var clone = get_node("/root/Node2D/Projectile").duplicate()
		clone.apply_impulse(Vector2.ZERO, Vector2.RIGHT*1000)
		scene2d.add_child(clone)
		clones.append(clone)
		if clones.size() > MAX_CLONES:
			scene2d.remove_child(clones[0])
			clones.remove(0)
	return input

func _physics_process(delta):
	velocity.y += GRAVITY * delta
	var inputed = get_input()
	var collision = move_and_collide(velocity)
	if collision != null:
		velocity.y = 0
		# Jump as long as object is not in the air
		if Input.is_key_pressed(KEY_UP):
			velocity.y = JUMP_SPEED
		# Moves object if it collides with the ground
		var remainder = collision.remainder
		remainder.y = 0
		move_and_slide(remainder * 50)
