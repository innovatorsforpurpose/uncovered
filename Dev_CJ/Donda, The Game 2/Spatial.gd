extends Node3D
var framecount = 0
var seconds = 0

func _process(_delta):
	framecount += 1
	if framecount%60 <= 0:
		seconds += 1
		print(str(seconds))
