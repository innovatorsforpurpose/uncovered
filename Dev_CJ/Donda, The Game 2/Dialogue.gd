class_name Dialogue
extends Control
  
onready var content := get_node("Content") as RichTextLabel
onready var type_timer := get_node("TypeTyper") as Timer
onready var pause_timer := get_node("PauseTimer") as Timer
  
func _ready() -> void:
	pass

func update_message(message: String) -> void:
	content.bbcode_text = message
	content.visible_characters = 0
	type_timer.start()

