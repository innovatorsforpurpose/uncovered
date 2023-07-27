extends CanvasLayer

# Called when the node enters the scene tree for the first time.
func _ready():
	visible = true
	get_node("/root/RootScene/Welcome/WelcomeTimer").start(12)

func _physics_process(_delta):
	if Input.is_action_just_pressed("game_usage"):
		get_node('/root/RootScene/Welcome').visible = false
		

func _on_Timer_timeout():
	get_node('/root/RootScene/Welcome').visible = false
	pass # Replace with function body.
