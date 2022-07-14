extends RigidBody2D
var framecount = 0

func _ready():
	pass


func _process(delta):
	if mode == RigidBody2D.MODE_STATIC:
		position.y = 0
		mode = RigidBody2D.MODE_RIGID
	if position.y <= -300 or position.y >= 600:
		mode = RigidBody2D.MODE_STATIC
