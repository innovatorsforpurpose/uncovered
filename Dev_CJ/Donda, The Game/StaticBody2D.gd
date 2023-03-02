extends CharacterBody2D

@export (int) var speed = 200
var framecount = 0
var jump = 1050
var gravity = 25
var velocity = Vector2()
func _physics_process(_delta):
	velocity.y += gravity
	set_velocity(velocity)
	set_up_direction(Vector2(0,-1))
	move_and_slide()
func _process(delta):
	framecount += 1
	if position.y <= -500 or position.y >= 550:
		position.x =750
		position.y = 220
	if is_on_floor ():
		if framecount%120 > 0:
			velocity.y -= jump

