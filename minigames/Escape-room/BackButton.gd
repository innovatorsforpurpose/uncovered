extends Button

# Hides when game is started
func _on_BackButton_pressed():
	get_tree().change_scene("res://minigames/Escape-room/Escape-room.tscn")
