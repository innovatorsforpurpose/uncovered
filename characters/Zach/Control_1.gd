extends Control
onready var Px = $Panel
onready var Lx = $Panel/Label
onready var IDx = $Panel/NinePatchRect
onready var TQx = $Panel/NinePatchRect2
onready var NQx = $Panel/NinePatchRect2/Label
onready var IQx = $Panel/Backtext
onready var IEx = $Panel/BackBoard

var currently_colliding = false
var active_dialogue = 0
var move = true
var velocity = 9
var player = true

func _ready():
	pass

func move_and_slide():
	pass

func toggle_the_player(on):
	var player = get_tree().get_root().find_node("MC", true, false)
	if player:
		player.set_active(on)

	elif Input.is_action_just_pressed("game_usage") and currently_colliding == true:
		active_dialogue = active_dialogue+1

	elif Input.is_action_just_pressed("game_usageI") and currently_colliding == true:
		active_dialogue = 9

	elif active_dialogue == 0 and currently_colliding == true:
		visible = true 

func _on_Timer_timeout():
	if currently_colliding == true:
		active_dialogue = active_dialogue+1
		currently_colliding == false
	if active_dialogue >= 9:
		active_dialogue = 9

func _physics_process(_delta):

	if active_dialogue == 0:
		Lx.text = "Zach and I made it to the school"
		NQx.hide()
		TQx.hide()
		Px.show()
		IDx.hide()
		IEx.show()

	if active_dialogue == 1:
		Lx.text = "Hey man you made it to my great school!"
		NQx.text = "Zach"
		TQx.show()
		NQx.show()
		Px.show()
		IDx.show()

	if active_dialogue == 2:
		Lx.text = "Are you kidding me?!"
		NQx.text = "you"
		NQx.hide()
		TQx.hide()
		Px.show()
		IDx.hide()

	if active_dialogue == 3:
		Lx.text = "OK… maybe it's not so great. But look at the bright side, at least you have me here with you."
		NQx.text = "Zach"
		TQx.show()
		NQx.show()
		Px.show()
		IDx.show()

	if active_dialogue == 4:
		Lx.text = "I don't think there is a bright side…"
		NQx.text = "you"
		TQx.show()
		NQx.show()
		Px.show()
		IDx.hide()

	if active_dialogue == 5:
		Lx.text = "C'mon don't be like that new kid. I'm sure you'll like it here in no time."
		NQx.text = "Zach"
		TQx.show()
		NQx.show()
		Px.show()
		IDx.show()

	if active_dialogue == 6:
		Lx.text = "I watch as Zach nervously scans the school corridors, anticipating something."
		NQx.hide()
		TQx.hide()
		Px.show()
		IDx.hide()

	if active_dialogue == 7:
		Lx.text = "Wait but what about a tour"
		NQx.text = "you"
		TQx.show()
		NQx.show()
		Px.show()
		IDx.hide()

	if active_dialogue == 8:
		Lx.text = "Fine but it has to be short."
		NQx.text = "Zach"
		TQx.show()
		NQx.show()
		Px.show()
		IDx.show()

	if active_dialogue == 9:
		visible = false
		Lx.hide()
		NQx.hide()
		Px.hide()
		IDx.hide()
		IEx.hide()

func _on_Area_body_exited(body):
	visible = false
	currently_colliding = false

func _on_Button_pressed():
	 active_dialogue = 9

func _on_Button2_pressed():
	 active_dialogue = active_dialogue+1


