extends Label

@onready var player = get_node("/root/RigidPlayerBody")

func _process(delta):
	text = "X Position: "+str(player.position.x)+"\nY Position: "+str(player.position.y)+"\n \nProjectiles: "+str(player.clones.size())
	if player.clones.size() == player.MAX_CLONES:
		text += " (MAX)"
