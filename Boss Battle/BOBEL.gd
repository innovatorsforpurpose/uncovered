extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
onready var player = ("/root/Node2D/Node2D/McBody/")

func _on_Area2D_body_entered(body):
	print("bobel entered")
	print(body.name)
	if body.name == 'MC_body':
		pass
		get_node("bobel_body").visible = false
		
