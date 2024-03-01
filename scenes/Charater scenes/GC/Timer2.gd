extends Timer

var currently_colliding = false

func _on_Area_body_entered(body):
	if body.name == "MC":
		currently_colliding = true

	if currently_colliding == true:
		start()

var count = 1

func _on_WelcomeTimer_timeout():
	count = count+1
	print("count",count)
	if count == 3:
		stop()

func _on_Area_body_exited(body):
	currently_colliding = false

	if currently_colliding == false:
		print("workingII")
		stop()
func _physics_process(delta):
	if Input.is_action_just_pressed("game_usage") and currently_colliding == true:
		count = count+1
	if Input.is_action_just_pressed("game_usageI") and currently_colliding == true:
		count = 3

func _on_Button_pressed():
	count = 3
