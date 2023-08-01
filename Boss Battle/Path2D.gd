extends Path2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _physics_process(delta):
	$PathFollow2D.set_offset($PathFollow2D.get_offset()+1000*delta)


