extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
const bulletPath = preload ('res://Boss Battle/Bullet.tscn')
func ready():
	pass
	
func _process(delta):
	if Input.is_action_just_pressed("ui_accept"):
		print("Im shooting")
		shoot()
	
func shoot():
	var bullet = bulletPath.instance()
	
	
	get_parent().get_parent().add_child(bullet)
	# var test_node = get_node("/root/Collisionshape2D/Pipe_2")
	# print(test_node) 
	# print(bullet.position)
	bullet.position = get_node("/root/Node2D/Pipe1").global_position 
	
	
	
	


func _on_Area2D_body_entered(body):
	print("Pipe1 entered")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
