extends RigidBody2D
var framecount = 0
var velocity = Vector2()
func _ready():
	pass


func _process(_delta):
	if mode == RigidBody2D.MODE_STATIC:
		mode = RigidBody2D.MODE_RIGID
		# # print("bro it wont work")
	if position.y < 0 or position.y > 600:
		position.y = 75
	if position.x > 1025:
		position.x = 0
	if position.x < 0:
		position.x = 1025
