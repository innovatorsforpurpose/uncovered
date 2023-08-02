extends Area2D

func _ready():
	pass

func _input(event):
	pass


func _input_event(viewport, event, shape_idx):
	if event.is_action_pressed("click"):
		print(event.as_text())
		print("Click1")
		var DialogueBox = get_node("..")
		DialogueBox._ready()
