extends Timer

var count = 1

func _on_WelcomeTimer_timeout():
	count = count+1
	print("count",count)
	if count == 19:
		stop()
