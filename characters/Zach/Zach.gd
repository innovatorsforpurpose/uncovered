extends Area

var target = 0
var velocity = Vector3(0,0,0)
var speed = 0.2
var path = []
var currently_colliding = false
var dialogue_player = null
var count = 0
var PathI = 0
var Xr = 10

func _on_Area_body_entered(body):
	if body.name == "MC": 
		currently_colliding = true
		# print(currently_colliding)
		Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
		count = 1
	else:
		currently_colliding = false
		pass

func _input(event):
	if event.is_action_pressed("game_usage") and currently_colliding == true:
		pass

func _on_Timer_timeout():
	count = count+1

func _physics_process(_delta):
	
	# print(currently_colliding)

	if currently_colliding == false and count == 0:
		return
#	# print(target)
	if Input.is_action_just_pressed("game_usage"):
		count = count+1

	if Input.is_action_just_pressed("game_usageI"):
		count = Xr+1
		# print(currently_colliding)
		# print(path)

	if count >= Xr:
		target = 1

	if target == 1 and path.size() == 0:
		path = [Vector3(-25,6.57,-21), Vector3(-45,6.57,-21),Vector3(-45,6.57,-28)]
	if path.size() > 0:
		velocity = Vector3(path[0].x - transform.origin.x, path[0].y - transform.origin.y, path[0].z - transform.origin.z)
		var distance =  velocity.length()
		if distance <= speed:
			target = 0
			path = path.slice(1,path.size())
			velocity = Vector3(0,0,0)
			if velocity == Vector3(0,0,0) and path == path.slice(1,path.size()):
				target = 2
		else:
			velocity = velocity.normalized() * speed
	transform.origin += velocity

	if target == 2:
		path = [Vector3(-45,6.57,-28)]
		target = 3

#	if target == 3 and path.size() == 0:
#		pass

func _on_Button_pressed():
	count = Xr 

func _on_Button2_pressed():
	count = count + 1
	if count >= Xr:
		count = Xr
