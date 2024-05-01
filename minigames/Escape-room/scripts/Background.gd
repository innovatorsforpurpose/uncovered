extends ParallaxLayer


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _process(_delta):
	self.position = get_local_mouse_position() * 0.02
	
	
	
	
func fade_black_to(_area):
	pass



	


func _on_Computer_pressed():
	pass # Replace with function body.
