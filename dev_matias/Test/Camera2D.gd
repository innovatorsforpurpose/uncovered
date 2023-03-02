extends Camera2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
@onready var player = get_node("/root/Node2D/KinematicBody2D3/Sprite2D")
#This function gets called every frame
func _proccess(delta):
  
  position.x = Sprite2D.position.x


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
