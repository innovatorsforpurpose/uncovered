extends Label

var title = " "

#func _ready():
#	title = "Main"

func _process(_delta):
	if Input.is_action_pressed("Debugger"):
		show()
	else:
		hide()
	self.text = ("In room: (" + str(title) + ")")
