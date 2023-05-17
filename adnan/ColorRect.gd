extends ColorRect


export var paused = true# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _physics_process(delta):
	print(paused)
	pass
	if !paused:
		print("got here")
		if color.a > 0.3:	
			color = Color(0, 0, 0, color.a - delta/10)# Cd every frame. 'delta' is the elapsed time since the previous frame.
			#print(color)
		else:
			visible = false
			paused = true
			get_node("/root/RootScene/BASEMENT/go to vent text").visible = true
			
			
#func _process(delta):
#	pass

func _on_ColorRectTimer_timeout():
	paused = false 

		
	pass # Replace with function body.
