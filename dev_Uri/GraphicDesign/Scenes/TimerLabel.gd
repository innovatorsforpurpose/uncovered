extends Label

var time = 0
var last_time = 0

func _process(delta):
	time = float(OS.get_ticks_msec()-last_time)/1000
	text = "Time Elapsed: "+str(time)+"s"
	text += "\n-1 point for\nevery 5 seconds!"
