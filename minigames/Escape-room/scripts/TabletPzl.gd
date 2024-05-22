extends "res://minigames/Escape-room/scripts/Background.gd"


var is_on = false

#func _ready():
#	print ("NO WAAAY")

func _on_Plug_pressed():
	print("It works!")
	$Sprite.texture = load("res://minigames/Escape-room/Escape-room_res/Txtrs/close ups/puzzle 3/Untitled_Artwork 48.png")
	is_on = true
	$Plug.hide()
	$Plug.disabled = true

func _on_tabloot_pressed():
	if is_on == true:
		$tabloot.hide()
		get_node("/root/Node2D/GearBox/ParallaxLayer/Sprite").texture = load("res://minigames/Escape-room/Escape-room_res/Txtrs/close ups/puzzle 4/open_panel_lever_turned.png")
		$Sprite.texture = load("res://minigames/Escape-room/Escape-room_res/Txtrs/close ups/puzzle 3/Untitled_Artwork 12(Edit).png")
		print("Imagine that you solved da puzzle... :o")
	else:
		print("It's still...")
 
