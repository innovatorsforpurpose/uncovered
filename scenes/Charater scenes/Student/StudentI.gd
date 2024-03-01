extends Area

var target = 0
var velocity = Vector3(0,0,0)
var speed = 0.2
var path = []
var currently_colliding = false
var dialogue_player = null

func _input(event):
	if event.is_action_pressed("game_usage") and currently_colliding:
		find_and_use_dialogue()
		#print("in_area_StudentI")
		#print(currently_colliding)
func find_and_use_dialogue():
	dialogue_player = get_node_or_null("DialoguePlayer")
	if dialogue_player:
		if not dialogue_player.next_line():
			# print("now changing target")
			target = 1

func _on_StudentI_body_exited(_body):
	dialogue_player = get_node_or_null("DialoguePlayer")
	if dialogue_player:
		dialogue_player.reset()
func _process(_delta):
	if len(get_overlapping_bodies()) == 0:
		dialogue_player = get_node_or_null("DialoguePlayer")
		if dialogue_player:
			dialogue_player.reset()
func _physics_process(_delta):
	if target == 0 and path.size() == 0:
		path = [Vector3(-27,12.458,-4),Vector3(-20,12.458,-6),Vector3(-23,12.458,-8),Vector3(-19.868,12.458, 0.482)]
	if path.size() > 0:
		velocity = Vector3(path[0].x - transform.origin.x, path[0].y - transform.origin.y, path[0].z - transform.origin.z)
		var distance =  velocity.length()
		# print(distance)
		if distance <= speed:
			target = 1 
			path = path.slice(1,path.size())
			velocity = Vector3(0,0,0)
		else:
			velocity = velocity.normalized() * speed
	# transform.origin += velocity

func _on_Area_body_entered(body):

	if body.name == "MC":
		currently_colliding = true

func _on_Area_body_exited(_body):
	currently_colliding = false
