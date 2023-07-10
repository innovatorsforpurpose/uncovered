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
