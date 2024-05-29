extends AnimationPlayer



func _on_TextureButton_toggled(button_pressed):
	if button_pressed == true:
		self.play("grid-scale")
	else:
		play_backwards("grid-scale")
