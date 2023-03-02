extends Area2D

func body_entered(body: Node):
	if body is CharacterBody2D:
		print("COLLISION!")
