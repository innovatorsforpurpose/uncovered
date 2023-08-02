extends Control

var dialogue = ['AI: Aritfical Intelligence is a tool that processes tasks an information without human intervention.']

var dialogue_index = 0
var finished = false
var is_dialogue_active = false

func _ready():
	load_dialogue()
	play()
	print("loaded")
func play():
		if is_dialogue_active:
			return
		if dialogue == null:
			return
		is_dialogue_active = true

func _process(delta):
	if Input.is_action_just_pressed("click"):
		#print("Click")
		load_dialogue()

func load_dialogue():
	if dialogue_index < dialogue.size():
		$RichTextLabel.bbcode_text = dialogue[dialogue_index]
		$RichTextLabel.percent_visible = 0
		$Tween.interpolate_property(
			$RichTextLabel, "percent_visible", 0, 1, 1, 
			Tween.TRANS_LINEAR, Tween.EASE_IN_OUT
		)
		$Tween.start()
	else:
		queue_free()
		dialogue_index += 1

func _on_Button_2_input_event(viewport, event, shape_idx):
	if Input.is_action_just_pressed("click"):
		print("Click2")
		load_dialogue()
		_ready()
