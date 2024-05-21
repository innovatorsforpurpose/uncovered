extends Control

onready var Back = $Background
onready var LxI = $PanelXI/Label
onready var LxII = $PanelXII/Label
onready var LxIIV = $PanelXIIV/Label
onready var LxIV = $PanelXIV/Label
onready var LxV = $PanelXV/Label
onready var LxVI = $PanelXVI/Label
onready var PanelXI = $PanelXI
onready var PanelXII = $PanelXII
onready var PanelXIIV = $PanelXIIV
onready var PanelXIV = $PanelXIV
onready var PanelXV = $PanelXV
onready var PanelXVI = $PanelXVI
onready var PanelXVII = $PanelXVII
onready var ID1 = $NinePatchRect
onready var ID2 = $NinePatchRect2
onready var ID3 = $NinePatchRect3
onready var ID4 = $NinePatchRect4
onready var ID5 = $NinePatchRect5
onready var ID6 = $NinePatchRect6


var active_dialogue = 0 

func _on_WelcomeTimer_timeout():

	active_dialogue = active_dialogue+1

func _ready():

	Back.show()
	LxI.hide()
	LxII.hide()
	LxIIV.hide()
	LxIV.hide()
	LxV.hide()
	LxVI.hide()
	ID1.hide()
	ID2.hide()
	ID3.hide()
	ID4.hide()
	ID5.hide()
	ID6.hide()
	PanelXI.hide()
	PanelXII.hide()
	PanelXIIV.hide()
	PanelXIV.hide()
	PanelXV.hide()
	PanelXVI.hide()
	PanelXVII.hide()

func _process(delta):

	if active_dialogue == 1:
		get_node("/root/RootScene/Welcome/Control_1/NinePatchRect/AnimationPlayer2").play("fadeI")
	if active_dialogue == 3:
		get_node("/root/RootScene/Welcome/Control_1/NinePatchRect2/AnimationPlayer2").play("fadeI")
	if active_dialogue == 5:
		get_node("/root/RootScene/Welcome/Control_1/NinePatchRect3/AnimationPlayer2").play("fadeI")
	if active_dialogue == 7:
		get_node("/root/RootScene/Welcome/Control_1/NinePatchRect4/AnimationPlayer2").play("fadeI")
	if active_dialogue == 9:
		get_node("/root/RootScene/Welcome/Control_1/NinePatchRect5/AnimationPlayer2").play("fadeI")
	if active_dialogue == 11:
		get_node("/root/RootScene/Welcome/Control_1/NinePatchRect6/AnimationPlayer2").play("fadeI")

func _physics_process(delta):

	if active_dialogue == 1:
		LxI.hide()
		LxII.hide()
		LxIIV.hide()
		LxIV.hide()
		LxV.hide()
		LxVI.hide()
		ID1.show()
		ID2.hide()
		ID3.hide()
		ID4.hide()
		ID5.hide()
		ID6.hide()
		Back.show()
		PanelXI.hide()
		PanelXII.hide()
		PanelXIIV.hide()
		PanelXIV.hide()
		PanelXV.hide()
		PanelXVI.hide()
		PanelXVII.hide()

	elif active_dialogue == 2:
		LxI.text = "Where are you? (Zach)"
		LxI.show()
		LxII.hide()
		LxIIV.hide()
		LxIV.hide()
		LxV.hide()
		LxVI.hide()
		ID1.hide()
		ID2.hide()
		ID3.hide()
		ID4.hide()
		ID5.hide()
		ID6.hide()
		Back.show()
		PanelXI.show()
		PanelXII.hide()
		PanelXIIV.hide()
		PanelXIV.hide()
		PanelXV.hide()
		PanelXVI.hide()
		PanelXVII.hide()

	elif active_dialogue == 3:
		LxI.hide()
		LxII.hide()
		LxIIV.hide()
		LxIV.hide()
		LxV.hide()
		LxVI.hide()
		ID1.hide()
		ID2.show()
		ID3.hide()
		ID4.hide()
		ID5.hide()
		ID6.hide()
		Back.show()
		PanelXI.hide()
		PanelXII.hide()
		PanelXIIV.hide()
		PanelXIV.hide()
		PanelXV.hide()
		PanelXVI.hide()
		PanelXVII.hide()

	elif active_dialogue == 4:
		LxII.text = "I’m getting dressed. (you)"
		LxI.hide()
		LxII.show()
		LxIIV.hide()
		LxIV.hide()
		LxV.hide()
		LxVI.hide()
		ID1.hide()
		ID2.hide()
		ID3.hide()
		ID4.hide()
		ID5.hide()
		ID6.hide()
		Back.show()
		PanelXI.hide()
		PanelXII.show()
		PanelXIIV.hide()
		PanelXIV.hide()
		PanelXV.hide()
		PanelXVI.hide()
		PanelXVII.hide()

	elif active_dialogue == 5:
		LxI.hide()
		LxII.hide()
		LxIIV.hide()
		LxIV.hide()
		LxV.hide()
		LxVI.hide()
		ID1.hide()
		ID2.hide()
		ID3.show()
		ID4.hide()
		ID5.hide()
		ID6.hide()
		Back.show()
		PanelXI.hide()
		PanelXII.hide()
		PanelXIIV.hide()
		PanelXIV.hide()
		PanelXV.hide()
		PanelXVI.hide()
		PanelXVII.hide()

	elif active_dialogue == 6:
		LxIIV.text = "Ok im outside. r u ready for ur first dya? day* (Zach)"
		LxI.hide()
		LxII.hide()
		LxIIV.show()
		LxIV.hide()
		LxV.hide()
		LxVI.hide()
		ID1.hide()
		ID2.hide()
		ID3.hide()
		ID4.hide()
		ID5.hide()
		ID6.hide()
		Back.show()
		PanelXI.hide()
		PanelXII.hide()
		PanelXIIV.show()
		PanelXIV.hide()
		PanelXV.hide()
		PanelXVI.hide()
		PanelXVII.hide()

	elif active_dialogue == 7:
		LxI.hide()
		LxII.hide()
		LxIIV.hide()
		LxIV.hide()
		LxV.hide()
		LxVI.hide()
		ID1.hide()
		ID2.hide()
		ID3.hide()
		ID4.show()
		ID5.hide()
		ID6.hide()
		Back.show()
		PanelXI.hide()
		PanelXII.hide()
		PanelXIIV.hide()
		PanelXIV.hide()
		PanelXV.hide()
		PanelXVI.hide()
		PanelXVII.hide()

	elif active_dialogue == 8:
		LxIV.text = "I’m nervous! (you)"
		LxI.hide()
		LxII.hide()
		LxIIV.hide()
		LxIV.show()
		LxV.hide()
		LxVI.hide()
		ID1.hide()
		ID2.hide()
		ID3.hide()
		ID4.hide()
		ID5.hide()
		ID6.hide()
		Back.show()
		PanelXI.hide()
		PanelXII.hide()
		PanelXIIV.hide()
		PanelXIV.show()
		PanelXV.hide()
		PanelXVI.hide()
		PanelXVII.hide()

	elif active_dialogue == 9:
		LxI.hide()
		LxII.hide()
		LxIIV.hide()
		LxIV.hide()
		LxV.hide()
		LxVI.hide()
		ID1.hide()
		ID2.hide()
		ID3.hide()
		ID4.hide()
		ID5.show()
		ID6.hide()
		Back.show()
		PanelXI.hide()
		PanelXII.hide()
		PanelXIIV.hide()
		PanelXIV.hide()
		PanelXV.hide()
		PanelXVI.hide()
		PanelXVII.hide()

	elif active_dialogue == 10:
		LxV.text = "Hold on i left my 7 aligatoraids at my place. brb. (Zach)"
		LxI.hide()
		LxII.hide()
		LxIIV.hide()
		LxIV.hide()
		LxV.show()
		LxVI.hide()
		ID1.hide()
		ID2.hide()
		ID3.hide()
		ID4.hide()
		ID5.hide()
		ID6.hide()
		Back.show()
		PanelXI.hide()
		PanelXII.hide()
		PanelXIIV.hide()
		PanelXIV.hide()
		PanelXV.show()
		PanelXVI.hide()
		PanelXVII.hide()

	elif active_dialogue == 11:
		LxI.hide()
		LxII.hide()
		LxIIV.hide()
		LxIV.hide()
		LxV.hide()
		LxVI.hide()
		ID1.hide()
		ID2.hide()
		ID3.hide()
		ID4.hide()
		ID5.hide()
		ID6.show()
		Back.show()
		PanelXI.hide()
		PanelXII.hide()
		PanelXIIV.hide()
		PanelXIV.hide()
		PanelXV.hide()
		PanelXVI.hide()
		PanelXVII.hide()

	elif active_dialogue == 12:
		LxVI.text = "Seriously…?! (you)"
		LxI.hide()
		LxII.hide()
		LxIIV.hide()
		LxIV.hide()
		LxV.hide()
		LxVI.show()
		ID1.hide()
		ID2.hide()
		ID3.hide()
		ID4.hide()
		ID5.hide()
		ID6.hide()
		Back.show()
		PanelXI.hide()
		PanelXII.hide()
		PanelXIIV.hide()
		PanelXIV.hide()
		PanelXV.hide()
		PanelXVI.show()
		PanelXVII.hide()

	elif active_dialogue == 13:
		LxI.hide()
		LxII.hide()
		LxIIV.hide()
		LxIV.hide()
		LxV.hide()
		LxVI.hide()
		ID1.show()
		ID2.hide()
		ID3.hide()
		ID4.hide()
		ID5.hide()
		ID6.hide()
		Back.show()
		PanelXI.hide()
		PanelXII.hide()
		PanelXIIV.hide()
		PanelXIV.hide()
		PanelXV.hide()
		PanelXVI.hide()
		PanelXVII.hide()

	elif active_dialogue == 14:
		LxI.text = "I'm allowed to get thirsty ok (Zach)"
		LxI.show()
		LxII.hide()
		LxIIV.hide()
		LxIV.hide()
		LxV.hide()
		LxVI.hide()
		ID1.hide()
		ID2.hide()
		ID3.hide()
		ID4.hide()
		ID5.hide()
		ID6.hide()
		Back.show()
		PanelXI.show()
		PanelXII.hide()
		PanelXIIV.hide()
		PanelXIV.hide()
		PanelXV.hide()
		PanelXVI.hide()
		PanelXVII.hide()

	elif active_dialogue == 15:
		LxI.hide()
		LxII.hide()
		LxIIV.hide()
		LxIV.hide()
		LxV.hide()
		LxVI.hide()
		ID1.hide()
		ID2.show()
		ID3.hide()
		ID4.hide()
		ID5.hide()
		ID6.hide()
		Back.show()
		PanelXI.hide()
		PanelXII.hide()
		PanelXIIV.hide()
		PanelXIV.hide()
		PanelXV.hide()
		PanelXVI.hide()
		PanelXVII.hide()

	elif active_dialogue == 16:
		LxII.text = "There's like… water… (you)"
		LxI.hide()
		LxII.show()
		LxIIV.hide()
		LxIV.hide()
		LxV.hide()
		LxVI.hide()
		ID1.hide()
		ID2.hide()
		ID3.hide()
		ID4.hide()
		ID5.hide()
		ID6.hide()
		Back.show()
		PanelXI.hide()
		PanelXII.show()
		PanelXIIV.hide()
		PanelXIV.hide()
		PanelXV.hide()
		PanelXVI.hide()
		PanelXVII.hide()

	elif active_dialogue == 17:
		LxI.hide()
		LxII.hide()
		LxIIV.hide()
		LxIV.hide()
		LxV.hide()
		LxVI.hide()
		ID1.hide()
		ID2.hide()
		ID3.show()
		ID4.hide()
		ID5.hide()
		ID6.hide()
		Back.show()
		PanelXI.hide()
		PanelXII.hide()
		PanelXIIV.hide()
		PanelXIV.hide()
		PanelXV.hide()
		PanelXVI.hide()
		PanelXVII.hide()

	elif active_dialogue == 18:
		LxIIV.text = "Eww no. Plus I'm right next door ill be back in like 2 seconds (Zach)"
		LxI.hide()
		LxII.hide()
		LxIIV.show()
		LxIV.hide()
		LxV.hide()
		LxVI.hide()
		ID1.hide()
		ID2.hide()
		ID3.hide()
		ID4.hide()
		ID5.hide()
		ID6.hide()
		Back.show()
		PanelXI.hide()
		PanelXII.hide()
		PanelXIIV.show()
		PanelXIV.hide()
		PanelXV.hide()
		PanelXVI.hide()
		PanelXVII.hide()

	elif active_dialogue == 19:
		LxI.hide()
		LxII.hide()
		LxIIV.hide()
		LxIV.hide()
		LxV.hide()
		LxVI.hide()
		ID1.hide()
		ID2.hide()
		ID3.hide()
		ID4.show()
		ID5.hide()
		ID6.hide()
		Back.show()
		PanelXI.hide()
		PanelXII.hide()
		PanelXIIV.hide()
		PanelXIV.hide()
		PanelXV.hide()
		PanelXVI.hide()
		PanelXVII.hide()

	elif active_dialogue == 20:
		LxIV.text = "Where do I even go?? My schedule is so confusing… (you)"
		LxI.hide()
		LxII.hide()
		LxIIV.hide()
		LxIV.show()
		LxV.hide()
		LxVI.hide()
		ID1.hide()
		ID2.hide()
		ID3.hide()
		ID4.hide()
		ID5.hide()
		ID6.hide()
		Back.show()
		PanelXI.hide()
		PanelXII.hide()
		PanelXIIV.hide()
		PanelXIV.show()
		PanelXV.hide()
		PanelXVI.hide()
		PanelXVII.hide()

	elif active_dialogue == 21:
		LxI.hide()
		LxII.hide()
		LxIIV.hide()
		LxIV.hide()
		LxV.hide()
		LxVI.hide()
		ID1.hide()
		ID2.hide()
		ID3.hide()
		ID4.hide()
		ID5.show()
		ID6.hide()
		Back.show()
		PanelXI.hide()
		PanelXII.hide()
		PanelXIIV.hide()
		PanelXIV.hide()
		PanelXV.hide()
		PanelXVI.hide()
		PanelXVII.hide()

	elif active_dialogue == 22:
		LxV.text = "I'll show u around when we get there… I'm outside where are you? (Zach)"
		LxI.hide()
		LxII.hide()
		LxIIV.hide()
		LxIV.hide()
		LxV.show()
		LxVI.hide()
		ID1.hide()
		ID2.hide()
		ID3.hide()
		ID4.hide()
		ID5.hide()
		ID6.hide()
		Back.show()
		PanelXI.hide()
		PanelXII.hide()
		PanelXIIV.hide()
		PanelXIV.hide()
		PanelXV.show()
		PanelXVI.hide()
		PanelXVII.hide()

	elif active_dialogue == 23:
		LxI.hide()
		LxII.hide()
		LxIIV.hide()
		LxIV.hide()
		LxV.hide()
		LxVI.hide()
		ID1.hide()
		ID2.hide()
		ID3.hide()
		ID4.hide()
		ID5.hide()
		ID6.show()
		Back.show()
		PanelXI.hide()
		PanelXII.hide()
		PanelXIIV.hide()
		PanelXIV.hide()
		PanelXV.hide()
		PanelXVI.hide()
		PanelXVII.hide()

	elif active_dialogue == 24:
		LxVI.text = "I'm tying my shoes… Okay omw. (you)"
		LxI.hide()
		LxII.hide()
		LxIIV.hide()
		LxIV.hide()
		LxV.hide()
		LxVI.show()
		ID1.hide()
		ID2.hide()
		ID3.hide()
		ID4.hide()
		ID5.hide()
		ID6.hide()
		Back.show()
		PanelXI.hide()
		PanelXII.hide()
		PanelXIIV.hide()
		PanelXIV.hide()
		PanelXV.hide()
		PanelXVI.show()
		PanelXVII.hide()

	elif active_dialogue == 25:
		LxI.hide()
		LxII.hide()
		LxIIV.hide()
		LxIV.hide()
		LxV.hide()
		LxVI.hide()
		ID1.hide()
		ID2.hide()
		ID3.hide()
		ID4.hide()
		ID5.hide()
		ID6.hide()
		Back.show()
		PanelXI.hide()
		PanelXII.hide()
		PanelXIIV.hide()
		PanelXIV.hide()
		PanelXV.hide()
		PanelXVI.hide()
		PanelXVII.hide()
		get_node("/root/RootScene/Welcome/AnimationPlayer").play("Fade")

	elif active_dialogue == 26:

		Back.hide()
		LxI.hide()
		LxII.hide()
		LxIIV.hide()
		LxIV.hide()
		LxV.hide()
		LxVI.hide()
		ID1.hide()
		ID2.hide()
		ID3.hide()
		ID4.hide()
		ID5.hide()
		ID6.hide()
		PanelXI.hide()
		PanelXII.hide()
		PanelXIIV.hide()
		PanelXIV.hide()
		PanelXV.hide()
		PanelXVI.hide()
		PanelXVII.show()
		if Input.is_action_just_pressed("game_usage"):
			PanelXVII.hide()
