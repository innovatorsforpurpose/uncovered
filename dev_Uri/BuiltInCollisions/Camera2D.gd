extends Camera2D

onready var player = get_node("/root/Node2D/RigidPlayerBody")

func _process(delta):
	position = player.position
