extends Timer

var currently_colliding = false
var Xr = 11
var count = 1

func _on_Area_body_entered(body):
	if body.name == "MC":
		currently_colliding = true

	if currently_colliding == true:
		start()
		if Input.is_action_just_pressed("game_usage") and currently_colliding == true:
			count = count+1
		elif Input.is_action_just_pressed("game_usageI"):
			count = Xr

func _on_Area_body_exited(body):
	currently_colliding = false

	if currently_colliding == false:
		#print("workingII")
		stop()

func _physics_process(delta):
	if Input.is_action_just_pressed("game_usage") and currently_colliding == true:
		count = count+1
	if Input.is_action_just_pressed("game_usageI"):
		count = Xr

func _on_Button_pressed():
	count = Xr

func _on_Button2_pressed():
	count = count+1


func _on_Timer_timeout():
	count = count+1
	if count == Xr:
		stop()
