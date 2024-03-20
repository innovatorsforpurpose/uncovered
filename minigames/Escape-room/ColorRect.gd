extends Panel


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass




func _on_BackButton_pressed():
	var background = get_node("/root/Node2D/Background")
	if background.texture != ResourceLoader.load("res://Minigame_2_res/Txtrs/Backdrops/Frame 1.png"):
		$Back.play_backwards("Back")
	else:
		$Back.play("Back")


func _on_CabinetButton_pressed():
	$Cabinet.play("Cabinat")
