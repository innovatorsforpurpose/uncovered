extends CharacterBody2D

const MAX_SPEED = 5
var speed = MAX_SPEED

func _process(delta):
	if Input.is_key_pressed(KEY_SHIFT):
		speed = 1
	
	var velocity = Vector2.ZERO
	if Input.is_key_pressed(KEY_RIGHT):
		velocity += Vector2.RIGHT * speed
	if Input.is_key_pressed(KEY_LEFT):
		velocity += Vector2.LEFT * speed
	if Input.is_key_pressed(KEY_UP):
		velocity += Vector2.UP * speed
	if Input.is_key_pressed(KEY_DOWN):
		velocity += Vector2.DOWN * speed
	position += velocity
	speed = MAX_SPEED
