extends Button


func click():
	get_node("/root/CreationScene").visible = false
	print("ComplectionScecne")
	$Timer.start() # starts timer

