extends CharacterBody2D


const UP = Vector2(0, -1)
const GRAVITY = 20
const MAXFALLSPEED = 200
const MAXSPEED = 80
const JUMP = 400
const ACCELERATION = 10

var motion = Vector2()
func _ready():
	pass
	
func _process(delta):
	print("im here asfafs")
	motion.y += GRAVITY
	if motion.y > MAXFALLSPEED:
		print("im hereee")
		motion.y = MAXFALLSPEED
		
		motion.x = clamp(motion.x, -MAXSPEED, MAXSPEED)
		
		
	if Input.is_action_pressed("right"):
		print("im here1")
		motion.x += ACCELERATION
	elif Input.is_action_pressed("left"):
		print("im here2")
		motion.x -= ACCELERATION 
	else:
		print("im here3")
		motion.x = lerp(motion.x, 0, 0.2)
		
	if is_on_floor():
		print("im here")
		if Input.is_action_pressed("jump"):
			motion.y = -JUMP
	
	set_velocity(motion)
	set_up_direction(UP)
	move_and_slide()
	motion = velocity
		
