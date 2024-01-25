extends Control
onready var P1 = $Panel
onready var L1 = $Panel/Label
onready var ID1 = $Panel/NinePatchRect
onready var TQ1 = $Panel/NinePatchRect2
onready var NQ1 = $Panel/NinePatchRect2/Label
onready var IQ1 = $Panel/Backtext
onready var B1 = $BackBoard
onready var P2 = $Panel2
onready var L2 = $Panel2/Label
onready var ID2 = $Panel2/NinePatchRect
onready var TQ2 = $Panel2/NinePatchRect2
onready var NQ2 = $Panel2/NinePatchRect2/Label
onready var IQ2 = $Panel2/Backtext
onready var P3 = $Panel3
onready var L3 = $Panel3/Label
onready var ID3 = $Panel3/NinePatchRect
onready var TQ3 = $Panel3/NinePatchRect2
onready var NQ3 = $Panel3/NinePatchRect2/Label
onready var IQ3 = $Panel3/Backtext
onready var P4 = $Panel4
onready var L4 = $Panel4/Label
onready var ID4 = $Panel4/NinePatchRect
onready var TQ4 = $Panel4/NinePatchRect2
onready var NQ4 = $Panel4/NinePatchRect2/Label
onready var IQ4 = $Panel4/Backtext
onready var P5 = $Panel5
onready var L5 = $Panel5/Label
onready var ID5 = $Panel5/NinePatchRect
onready var TQ5 = $Panel5/NinePatchRect2
onready var NQ5 = $Panel5/NinePatchRect2/Label
onready var IQ5 = $Panel5/Backtext

var active_dialogue = 0

func _ready():
	pass

func _physics_process(delta):
	if Input.is_action_just_pressed("game_usage"):
		active_dialogue = active_dialogue+1
		visible = true

	if active_dialogue == 0:
		P1.hide()
		L1.hide()
		ID1.hide()
		IQ1.hide()
		P2.hide()
		L2.hide()
		ID2.hide()
		IQ2.hide()
		P3.hide()
		L3.hide()
		ID3.hide()
		IQ3.hide()
		P4.hide()
		L4.hide()
		ID4.hide()
		IQ4.hide()
		P5.hide()
		L5.hide()
		ID5.hide()
		IQ5.hide()
		B1.hide()
	if active_dialogue == 1:
		P1.show()
		L1.show()
		ID1.show()
		IQ1.show()
		P2.hide()
		L2.hide()
		ID2.hide()
		IQ2.hide()
		P3.hide()
		L3.hide()
		ID3.hide()
		IQ3.hide()
		P4.hide()
		L4.hide()
		ID4.hide()
		IQ4.hide()
		P5.hide()
		L5.hide()
		ID5.hide()
		IQ5.hide()
		B1.hide()
	if active_dialogue == 2:
		P1.hide()
		L1.hide()
		ID1.hide()
		IQ1.hide()
		P2.show()
		L2.show()
		ID2.show()
		IQ2.show()
		P3.hide()
		L3.hide()
		ID3.hide()
		IQ3.hide()
		P4.hide()
		L4.hide()
		ID4.hide()
		IQ4.hide()
		P5.hide()
		L5.hide()
		ID5.hide()
		IQ5.hide()
		B1.hide()
	if active_dialogue == 3:
		P1.hide()
		L1.hide()
		ID1.hide()
		IQ1.hide()
		P2.hide()
		L2.hide()
		ID2.hide()
		IQ2.hide()
		P3.show()
		L3.show()
		ID3.show()
		IQ3.show()
		P4.hide()
		L4.hide()
		ID4.hide()
		IQ4.hide()
		P5.hide()
		L5.hide()
		ID5.hide()
		IQ5.hide()
		B1.hide()
	if active_dialogue == 4:
		P1.hide()
		L1.hide()
		ID1.hide()
		IQ1.hide()
		P2.hide()
		L2.hide()
		ID2.hide()
		IQ2.hide()
		P3.hide()
		L3.hide()
		ID3.hide()
		IQ3.hide()
		P4.show()
		L4.show()
		ID4.show()
		IQ4.show()
		P5.hide()
		L5.hide()
		ID5.hide()
		IQ5.hide()
		B1.hide()
	if active_dialogue == 5:
		P1.hide()
		L1.hide()
		ID1.hide()
		IQ1.hide()
		P2.hide()
		L2.hide()
		ID2.hide()
		IQ2.hide()
		P3.hide()
		L3.hide()
		ID3.hide()
		IQ3.hide()
		P4.hide()
		L4.hide()
		ID4.hide()
		IQ4.hide()
		P5.show()
		L5.show()
		ID5.show()
		IQ5.show()
		B1.hide()
	if active_dialogue == 6:
		P1.hide()
		L1.hide()
		ID1.hide()
		IQ1.hide()
		P2.hide()
		L2.hide()
		ID2.hide()
		IQ2.hide()
		P3.hide()
		L3.hide()
		ID3.hide()
		IQ3.hide()
		P4.hide()
		L4.hide()
		ID4.hide()
		IQ4.hide()
		P5.hide()
		L5.hide()
		ID5.hide()
		IQ5.hide()
		B1.hide()
		visible = false
