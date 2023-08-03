extends Node2D

var target = 0
var zero = Vector2(0,0)
var speed = 20
var path = []
var currently_colliding = false

var dialogue_player = null

func _input(event):
	pass

func _on_Node2D_child_exiting_tree(node):
	dialogue_player = get_node_or_null("Dialogueplayer")
	if dialogue_player:
		dialogue_player.reset()

func _physics_process(_delta):
	if target == 0 and path.size() == 0:
		path = [Vector2(800,3500),Vector2(800,2500),Vector2(4500,2500),Vector2(4500,3500)]
	if path.size() > 0:
		zero = Vector2(path[0].x - transform.origin.x, path[0].y - transform.origin.y)
		var distance =  zero.length()
		if distance <= speed:
			target = 0
			path = path.slice(1,path.size())
			zero = Vector2(0,0)
		else:
			zero = zero.normalized() * speed
	transform.origin += zero

func _on_Control_about_to_show():
	get_node("Control").popup()
