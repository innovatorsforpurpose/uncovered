extends KinematicBody2D

var velocity = Vector2(0, 1)
var speed = 1500

func _physics_process(delta):
	
	var collision_info = move_and_collide(velocity.normalized()* delta * speed)

