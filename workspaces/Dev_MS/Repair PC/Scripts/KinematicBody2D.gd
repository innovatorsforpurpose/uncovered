extends KinematicBody2D

var dragReady = false
var myClickPos 
var myDistance = Vector2(0,0)




func _physics_process(_delta):
	
	if Input.is_action_pressed("click") and dragReady:
		myClickPos = get_global_mouse_position()
		#myDistance = get_position()- myClickPos
		#print(myDistance)
		
	if Input.is_action_pressed("click") and dragReady:
		set_position(get_global_mouse_position())

 


func _on_KinematicBody2D_mouse_entered():
	dragReady = true 



func _on_KinematicBody2D_mouse_exited():
	dragReady = false




 


func _on_Area2D_body_entered(_body):
	
	print("hello")


