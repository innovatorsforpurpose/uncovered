extends Button

func _ready():
	pass

func _input(event):
	pass

func _on_Button_3_gui_input(event):
		if event.is_action_pressed("click"):
			print(event.as_text())
			print("Click2")
			var DialogueBox = get_node("..")
			DialogueBox._ready()
