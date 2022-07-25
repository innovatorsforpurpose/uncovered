extends RigidBody2D

const MAX_CLONES = 500
const SPEED = 10

var clones = []
onready var scene2d = get_node("/root/Node2")

func _physics_process(delta):
	if Input.is_key_pressed(KEY_UP):
		apply_impulse(Vector2.ZERO, Vector2.UP * SPEED)
	if Input.is_key_pressed(KEY_DOWN):
		apply_impulse(Vector2.ZERO, Vector2.DOWN * SPEED)
	if Input.is_key_pressed(KEY_RIGHT):
		apply_impulse(Vector2.ZERO, Vector2.RIGHT * SPEED)
	if Input.is_key_pressed(KEY_LEFT):
		apply_impulse(Vector2.ZERO, Vector2.LEFT * SPEED)
	if Input.is_key_pressed(KEY_SPACE):
		var clone = get_node("/root/Node2D/Projectile").duplicate()
		clone.apply_impulse(Vector2.ZERO,  Vector2.UP*100)
		scene2d.add_child(clone)
		clones.append(clone)
		if clones.size() > MAX_CLONES:
			scene2d.remove_child(clones[0])
			clones.remove(0)
