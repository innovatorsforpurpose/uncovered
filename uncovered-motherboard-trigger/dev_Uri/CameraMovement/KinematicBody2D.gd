extends KinematicBody2D

const SPEED = 6

func _process(delta):
	var velocity = Vector2.ZERO
	if Input.is_key_pressed(KEY_LEFT):
		velocity += Vector2.LEFT * SPEED
	if Input.is_key_pressed(KEY_RIGHT):
		velocity += Vector2.RIGHT * SPEED
	if Input.is_key_pressed(KEY_UP):
		velocity += Vector2.UP * SPEED
	if Input.is_key_pressed(KEY_DOWN):
		velocity += Vector2.DOWN * SPEED
	position += velocity
