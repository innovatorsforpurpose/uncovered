extends CanvasLayer

@export var dialogue_file # (String, FILE, "*.json")
var dialogues = []
var current_dialogue_id = 0
var cooldown_time

func _ready():
	load_dialogue()
func load_dialogue():
	var file = File.new()
	if file.file_exists(dialogue_file):
		file.open(dialogue_file, file.READ)
		var test_json_conv = JSON.new()
		test_json_conv.parse(file.get_as_text())
		return test_json_conv.get_data()
		
	print (file.file_exists(dialogue_file))
func speak(): 
	return
	# text box pops up. 
