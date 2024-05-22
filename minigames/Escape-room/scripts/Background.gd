extends ParallaxLayer


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _process(_delta):
	self.position = get_local_mouse_position() * 0.02


func _on_LineEdit_text_entered(new_text):
	$LineEdit.editable = false
	$LineEdit.hide()
	print(new_text)
	if new_text == "Washington" or new_text == "washington":
		$Sprite.texture = load("res://minigames/Escape-room/Escape-room_res/Txtrs/close ups/puzzle 2/computer correct.png")
	else:
		$Sprite.texture = load("res://minigames/Escape-room/Escape-room_res/Txtrs/close ups/puzzle 2/computer incorrect.png")
		yield(get_tree().create_timer(2),"timeout")
		$Sprite.texture = load("res://minigames/Escape-room/Escape-room_res/Txtrs/close ups/puzzle 2/computer with question.png")
		$LineEdit.editable = true
		$LineEdit.show()
		$LineEdit.text = ""
