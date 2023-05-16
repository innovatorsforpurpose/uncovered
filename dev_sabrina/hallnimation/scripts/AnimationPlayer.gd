extends AnimationPlayer


func _ready():
	#if Input.is_action_pressed('ui_destruction'):
		#get_node("$AnimationPlayer").play("floorcube000")
	pass

func _on_Area2_body_shape_entered(body_rid, body, body_shape_index, local_shape_index):
	if body.name == "MC":	
		get_node('.').play("Animation")
			
		pass # Replace with function body.
