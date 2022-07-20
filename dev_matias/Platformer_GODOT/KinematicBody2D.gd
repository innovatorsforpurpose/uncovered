extends KinematicBody2D

signal health_updated(health)
signal kill()

const bulletpath = preload("res://dev_matias/Platformer_GODOT/Bullet.tscn")
const UP = Vector2(0, -1)
const GRAVITY = 20
const MAXFALLSPEED = 200
const MAXSPEED = 80
const JUMP = 400
const ACCELERATION = 10
var bullet_counter = 0
#onready var timer = $Sprite/Timer
"""
#export (float) var max_health = 100
#onready var health = max_health setget _set_health

func damage(amount):
	if timer.is_stopped():
		timer.start()
	_set_health(health - amount)
	

func kill():
	$AnimationPlayer.play("Dead")
	
func _set_health(value):
	var prev_health = health
	health = clamp(value, 0, max_health)
	if health != prev_health:
		emit_signal("Health updated:", health)
		if health == 0:
			kill()
			emit_signal("killed")
		
	"""

var motion = Vector2()
var facing_right = true

func _ready():
	pass
	
func _process(delta):
	if Input.is_action_pressed("Shoot"):
		bullet_counter += delta
		if bullet_counter >= 0.2:
			bullet_counter = 0
			shoot()
	$Node2D.look_at(get_global_mouse_position())
#	for index in get_slide_collision():
#		var collision = get_slide_collision(index)
		
	motion.y += GRAVITY
	if motion.y > MAXFALLSPEED:
		motion.y = MAXFALLSPEED
		
		motion.x = clamp(motion.x, -MAXSPEED, MAXSPEED)
		
	if facing_right == true:
		$Sprite.scale.x = 3
	else:
		$Sprite.scale.x = -3
		
	if Input.is_action_pressed("right"):
		motion.x += ACCELERATION
		facing_right = true
		$AnimationPlayer.play("Run")
		
		
		
	elif Input.is_action_pressed("left"):
		motion.x -= ACCELERATION 
		facing_right = false
		$AnimationPlayer.play("Run")
	elif Input.is_action_pressed("Power"):
		$AnimationPlayer.play("Power")
	elif Input.is_action_pressed("Superpower"):
		$AnimationPlayer.play("Superpower")
		
	else:
		motion.x = lerp(motion.x, 0, 0.2)
		$AnimationPlayer.play("Idle")
		
	if is_on_floor():
		if Input.is_action_pressed("jump"):
			motion.y = -JUMP
			
	if !is_on_floor():
		print(position)
		if motion.y < 0:
			$AnimationPlayer.play("Jump")
		else:
			$AnimationPlayer.play("Fall")
		if position.y > 100:
			$AnimationPlayer.play("Dead")
			
	if Input.is_action_pressed("respawn"):
		position.x = -146
		position.y = -83
		
		
	motion = move_and_slide(motion, UP)
	
func shoot():
	var bullet = bulletpath.instance()
	get_parent().add_child(bullet)
	bullet.position = $Node2D/shot.global_position
	bullet.velocity = $Node2D/shot.get_global_mouse_position() - bullet.position
#	for index in get_slide_collision():
#		var collision = get_slide_collision(index)
		
		
	
#if $AnimationPlayer.play("Power") && 
