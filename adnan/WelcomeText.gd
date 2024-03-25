extends CanvasLayer

# Called when the node enters the scene tree for the first time.
func _ready():
	visible = true
	get_node("WelcomeTimer").start(0)

func _physics_process(_delta):
	if Input.is_action_just_pressed("game_usage"):
		get_node('.').visible = false
		

func _on_Timer_timeout():
	get_node('.').visible = false
	pass # Replace with function body.
