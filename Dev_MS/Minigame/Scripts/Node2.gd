extends Node2D

export var blueline = false
export var redline = false
export var greenline = false
export var yellowline = false





func _on_green_area_body_entered():
	print(blueline)
	print(greenline)
	print(yellowline)
	print(redline)
	if blueline and redline and greenline and yellowline:
		print("done")
		get_node("winner").visible = true
		







func _on_red_area_body_entered(_body):
	
	pass # Replace with function body.


func _on_yellow_area_body_entered(_body):
	pass # Replace with function body.


func _on_Area_body_shape_entered(body_rid, body, body_shape_index, local_shape_index):

	pass # Replace with function body.
func _ready():
		visible = false
		pass
var show_minigame = false

func _on_Area_body_entered(body):
	print("got here")
	print(show_minigame)
	print(body.name)
	if body.name == "MC" and show_minigame == false:
		print("got here 2")
		show_minigame = true
		get_node("/root/RootScene/OFFICE/Node2D").visible = true
		get_node("/root/RootScene/BASEMENT/go to vent text").visible = false

		pass # Replace with function body.



