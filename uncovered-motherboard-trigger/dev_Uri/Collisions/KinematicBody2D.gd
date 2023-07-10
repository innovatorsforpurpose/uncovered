extends KinematicBody2D

# Options
const G_FORCE = -0.5
const MASS = 1
const BOUNCE = 1
const SPEED = 0.1
const COEFFICIENT_OF_FRICTION = -0.05
const AIR_RESIST = -0.03
const JUMP = 5

var V_X = 0
var V_Y = 0

var y_force = 0
var x_force = 0

# Vertical controls
var jump_timer = 0

func _ready():
	V_X = get_viewport().size.x
	V_Y = get_viewport().size.y

func _process(delta):
	# Instant Brake
	if Input.is_key_pressed(KEY_SPACE):
		y_force = 0
		x_force = 0
	
	# Horizontal Movement
	if Input.is_key_pressed(KEY_RIGHT):
		x_force += SPEED
	if Input.is_key_pressed(KEY_LEFT):
		x_force -= SPEED
	
	if position.y == V_Y-25:
		x_force += (COEFFICIENT_OF_FRICTION*(MASS*(G_FORCE)*-1)) * (0.5*x_force)
	position.x += x_force/MASS
	
	if position.x > V_X-25:
		collision(true)
	if position.x < 25:
		collision(true)
	
	# Vertical Movement
	if Input.is_key_pressed(KEY_UP) && jump_timer == 0:
		jump_timer = 100
		y_force -= JUMP

	y_force -= G_FORCE*MASS
	y_force += AIR_RESIST*(0.5*y_force)
	position.y += y_force/MASS
	
	if position.y > V_Y-25:
		collision(false)
	
	if jump_timer > 0:
		jump_timer -= 1
	
	# print("X FORCE: "+str(x_force))
	# print("Y FORCE: "+str(y_force))

func collision(var x: bool):
	if x:
		x_force = -x_force*BOUNCE
	else:
		y_force = -y_force*BOUNCE
