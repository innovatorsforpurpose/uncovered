extends Area

var target = 0
var velocity = Vector3(0,0,0)
var speed = 0.2
var path = []
var currently_colliding = false
var dialogue_player = null
var count = 0
var PathI = 0

func _input(event):
	if event.is_action_pressed("game_usage") and currently_colliding:
		pass

func _on_Timer_timeout():
	count = count+1
	if count >= 10:
		target = 1

	if Input.is_action_just_pressed("game_usage") and currently_colliding == true:
		count = count+1

	if Input.is_action_just_pressed("game_usageI") and currently_colliding == true:
		count = 10

	if count >= 10:
		pass

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
		path = [Vector3(-25,12.96,-1.75), Vector3(-45,12.96,-1.75),Vector3(-45,12.96,-8)]
	if path.size() > 0:
		velocity = Vector3(path[0].x - transform.origin.x, path[0].y - transform.origin.y, path[0].z - transform.origin.z)
		var distance =  velocity.length()
		# print(distance)
		if distance <= speed:
			target = 0 
			path = path.slice(1,path.size())
			velocity = Vector3(0,0,0)
		else:
			velocity = velocity.normalized() * speed
	transform.origin += velocity
