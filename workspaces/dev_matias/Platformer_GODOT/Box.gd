
extends KinematicBody2D

#onready var timer = $Sprite/Timer
export (float) var max_health = 100
onready var health = max_health setget _set_health

#func damage(amount):
#	if timer.is_stopped():
#		timer.start()
#	_set_health(health - amount)
	

func kill():
	# print("I am dead")
	pass
	
func _set_health(value):
	var prev_health = health
	health = clamp(value, 0, max_health)
	if health != prev_health:
		emit_signal("Health updated:", health)
		if health == 0:
			kill()
			emit_signal("killed")
	# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
