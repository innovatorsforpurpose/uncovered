extends Area

var target = 0
var velocity = Vector3(0,0,0)
var speed = 0.2
var path = []

var dialogue_player = null

func _input(event):
	if event.is_action_pressed("game_usage") and len(get_overlapping_bodies()) > 1:
		find_and_use_dialogue()
func find_and_use_dialogue():
	dialogue_player = get_node_or_null("Dialogueplayer")
	if dialogue_player:
		if not dialogue_player.next_line():
			print("now changing target")
			target = 1
			
func _on_Mentor_body_exited(_body):
	dialogue_player = get_node_or_null("Dialogueplayer")
	if dialogue_player:
		dialogue_player.reset()
func _process(_delta):
	if len(get_overlapping_bodies()) == 0:
		dialogue_player = get_node_or_null("Dialogueplayer")
		if dialogue_player:
			dialogue_player.reset()

func _physics_process(_delta):
	if target == 1 and path.size() == 0:
		path = [Vector3(-17,1,-37), Vector3(-33,1,-37)]
	if path.size() > 0:
		velocity = Vector3(path[0].x - transform.origin.x, path[0].y - transform.origin.y, path[0].z - transform.origin.z)
		var distance =  velocity.length()
		print(distance)
		if distance <= speed:
			target = 0 
			path = path.slice(1,path.size())
			velocity = Vector3(0,0,0)
		else:
			velocity = velocity.normalized() * speed
	transform.origin += velocity
