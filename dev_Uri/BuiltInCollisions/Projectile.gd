extends RigidBody2D


@onready var player = get_node("/root/Node2D/RigidPlayerBody")

func _ready():
	position = player.position
