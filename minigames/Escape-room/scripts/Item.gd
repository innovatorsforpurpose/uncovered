extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	if randi() % 2 == 0:
		$TextureRect.texture = load("res://minigames/Escape-room/Escape-room_res/Txtrs/UI assets/Button.png")
	else: 
		$TextureRect.texture = load("res://minigames/Escape-room/Escape-room_res/Txtrs/UI assets/Button_blu.png")

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
