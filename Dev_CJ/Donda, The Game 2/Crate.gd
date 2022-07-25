extends RigidBody
var framecount = 0
var initial_position
var angular
func _ready():
	initial_position = Vector3(-16.305,0,0)

func _process(_delta):
	framecount += 1
	if framecount%300 <= 0 or Input.is_action_just_pressed("reset"):
		set_translation(initial_position)
		print(str(initial_position))
		set_sleeping(true)
