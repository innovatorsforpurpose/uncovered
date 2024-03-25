extends Timer

var currently_colliding = false

func _on_Zach_body_entered(body):
	if body.name == "MC":
		currently_colliding = true

	if currently_colliding == true:
		#print("workingIII")
		start()

func _on_Area_body_entered(body):
	if body.name == "MC":
		currently_colliding = true

	if currently_colliding == true:
		#print("workingI")
		start()

var count = 1

func _on_WelcomeTimer_timeout():
	count = count+1
	#print("count",count)
	if count == 18:
		stop()


func _on_Area_body_exited(body):
	currently_colliding = false

	if currently_colliding == false:
		#print("workingII")
		stop()


func _on_Zach_body_exited(body):
	currently_colliding = false
	if currently_colliding == false:
		#print("workingII")
		stop()
