extends Control

var dialogue = ['AI: Aritfical Intelligence is a tool that processes tasks an information without human intervention.']

var dialogue_index = 0
var finished = false

func _ready():
	load_dialogue()
	
func _process(delta):
	if Input.is_action_just_pressed("game_usage"):
		load_dialogue()

func load_dialogue():
	if dialogue_index < dialogue.size():
		$RichTextLabel.bbcode_text = dialogue[dialogue_index]
		$RichTextLabel.percent_visible = 0
		$Tween.interpolate_property(
			$RichTextLabel, "percent_visible",
		)
	else:
		queue_free()
		dialogue_index += 1


