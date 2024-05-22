extends CanvasLayer

var count = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	visible = true
	get_node("WelcomeTimer").start(0)

func _on_Button_pressed():
	get_node('.').visible = false
	# print(visible)

func _physics_process(_delta):
	if Input.is_action_just_pressed("Dev_skip"):
		get_node('.').visible = false
	if Input.is_action_just_pressed("game_usage") and count >= 27:
		count = count + 1
		if count >= 29:
			get_node('.').visible = false


func _on_WelcomeTimer_timeout():
	count = count + 1
	print(count)
	if count >= 26:
		count = 27
		pass
