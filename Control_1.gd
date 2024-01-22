extends Control
onready var P1 = $Backtext/Panel
onready var L1 = $Backtext/Panel/Label
onready var P2 = $Backtext/Panel2
onready var L2 = $Backtext/Panel/Label
onready var P3 = $Backtext/Panel3
onready var L3 = $Backtext/Panel3/Label
onready var P4 = $Backtext/Panel4
onready var L4 = $Backtext/Panel/Label
onready var P5 = $Backtext/Panel5
onready var L5 = $Backtext/Panel/Label
onready var B1 = $BackBoard
onready var B2 = $Backtext

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
		P2.hide()
		L2.hide()
		P3.hide()
		L3.hide()
		P4.hide()
		L4.hide()
		P5.hide()
		L5.hide()
		B1.hide()
		B2.show()

	if active_dialogue == 1:
		P1.show()
		L1.show()
		P2.hide()
		L2.hide()
		P3.hide()
		L3.hide()
		P4.hide()
		L4.hide()
		P5.hide()
		L5.hide()
		B1.hide()
		B2.show()

	if active_dialogue == 2:
		P1.hide()
		L1.hide()
		P2.show()
		L2.show()
		P3.hide()
		L3.hide()
		P4.hide()
		L4.hide()
		P5.hide()
		L5.hide()
		B1.hide()
		B2.show()

	if active_dialogue == 3:
		P1.hide()
		L1.hide()
		P2.hide()
		L2.hide()
		P3.show()
		L3.show()
		P4.hide()
		L4.hide()
		P5.hide()
		L5.hide()
		B1.hide()
		B2.show()

	if active_dialogue == 4:
		P1.hide()
		L1.hide()
		P2.hide()
		L2.hide()
		P3.hide()
		L3.hide()
		P4.show()
		L4.show()
		P5.hide()
		L5.hide()
		B1.hide()
		B2.show()

	if active_dialogue == 5:
		P1.hide()
		L1.hide()
		P2.hide()
		L2.hide()
		P3.hide()
		L3.hide()
		P4.hide()
		L4.hide()
		P5.show()
		L5.show()
		B1.hide()
		B2.show()

	if active_dialogue == 6:
		P1.hide()
		L1.hide()
		P2.hide()
		L2.hide()
		P3.hide()
		L3.hide()
		P4.hide()
		L4.hide()
		P5.hide()
		L5.hide()
		B1.hide()
		B2.hide()
		visible = false
