extends ParallaxLayer

export var slide_code = ["Star","Square","Circle","Heart"]
export var current = []
var answer = ["Heart", "Star", "Square", "Circle"] #<--- Can you keep it a secrect?
var IsCodeRight = false
export var DoorKey = false



func _process(_delta):
	self.position = get_local_mouse_position() * 0.02
	if current.size() == 4:
		IsCodeRight = true
#		print(current)
		if (current[0] != answer[0]):
			IsCodeRight = false
		if (current[1] != answer[1]):
			IsCodeRight = false
		if (current[2] != answer[2]):
			IsCodeRight = false
		if (current[3] != answer[3]):
			IsCodeRight = false
#		print(IsCodeRight)


func _on_Doorhndle_pressed():
	if IsCodeRight == true and DoorKey == true: #<-- If the Key is inserted and
		print("Access Granted!")                #and the code is correct they can leave.
		$Button1.hide()
		$Button2.hide()
		$Button3.hide()
		$Button4.hide()
		$Doorhndle.hide()
		$Keyhole.hide()
		$Background.texture = load("res://minigames/Escape-room/Escape-room_res/Txtrs/close ups/puzzle 2/door_open.png")
		get_node("/root/Node2D/PlayerGUI").hide()
	elif current.size() == 4:
		get_node("/root/Node2D/PlayerGUI/Label").say("That didn't work")
	elif IsCodeRight == true:
		get_node("/root/Node2D/PlayerGUI/Label").say("Still need a key!")
	elif DoorKey == true:
		get_node("/root/Node2D/PlayerGUI/Label").say("What do the shapes mean?")
	else:
		get_node("/root/Node2D/PlayerGUI/Label").say("I need a way to get in...")
