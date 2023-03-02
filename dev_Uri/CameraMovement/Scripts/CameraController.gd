extends Camera2D

@onready var player = get_node("/root/Player")

func _process (delta):
	var view_size = get_viewport().size
	# Tracking to the right
	if ((player.position.x - position.x) >= (view_size.x/2)-35) and Input.is_key_pressed(KEY_RIGHT):
		player.rotation += PI/2
		position.x = player.position.x-((view_size.x/2)-35)
	# Tracking to the left
	if ((player.position.x - position.x) < (view_size.x/-2)+40) and Input.is_key_pressed(KEY_LEFT):
		player.rotation += -PI/2
		position.x = player.position.x+((view_size.x/2)-40)
	
	# Tracking up
	if ((player.position.y - position.y) < (view_size.y/-2)+35) and Input.is_key_pressed(KEY_UP):
		position.y = player.position.y+((view_size.y/2)-35)
	# Tracking down
	if ((player.position.y - position.y) >= (view_size.y/2)-35) and Input.is_key_pressed(KEY_DOWN):
		position.y = player.position.y-((view_size.y/2)-35)
