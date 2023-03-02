extends CanvasLayer

@export var dialogue_file # (String, FILE, "*.json")


func _on_Dialogueplayer_ready():
	_ready()

var dialogues = []
var current_dialogue_id = -1
var is_dialogue_active = false

func _ready():
	play()
	$NinePatchRect.visible = false
	
func play():
	if is_dialogue_active:
		return
	dialogues = load_dialogue()
	print(dialogues)
	if dialogues == null:
		return
	is_dialogue_active = true
	$NinePatchRect.visible = true
	current_dialogue_id = -1
	
	
func reset():
	current_dialogue_id = -1

func next_line():
	print("line")
	print(current_dialogue_id)
	toggle_the_player(false)
	$NinePatchRect/Name.text = dialogues[current_dialogue_id]['name']
	$NinePatchRect/Message.text = dialogues[current_dialogue_id]['text']
	$NinePatchRect.visible = true
	current_dialogue_id += 1	
	if  current_dialogue_id >= len(dialogues):
		current_dialogue_id = len(dialogues) - 1
		$Timer.start()
		$NinePatchRect.visible = false
		toggle_the_player(true)
		return false 
	$NinePatchRect/Name.text = dialogues[current_dialogue_id]['name']
	$NinePatchRect/Message.text = dialogues[current_dialogue_id]['text']
	return true

func load_dialogue():
	var file = File.new()
	if file.file_exists(dialogue_file):
		print_debug("filename:" + dialogue_file)
		var err = file.open(dialogue_file, file.READ)
		if err != OK:
			return
		else:
			var test_json_conv = JSON.new()
			test_json_conv.parse(file.get_as_text())
			return test_json_conv.get_data()

func _on_Timer_timeout():
	is_dialogue_active = false
func toggle_the_player(on):
	var player = get_tree().get_root().find_child("MC", true, false)
	if player:
		player.set_active(on)

func _on_Mentor_body_entered(_body):
	_ready()


func _on_GC_body_entered(body):
	_ready()


func _on_Laura_body_entered(body):
	_ready()



func _on_Student_body_entered(body):
	_ready()


func _on_StudentI_body_entered(body):
	_ready()


func _on_StudentII_body_entered(body):
	_ready()


func _on_IDesk_body_entered(body): 
	_ready()

func _on_Bulletin_Board_body_entered(body):
	_ready()


func _on_Bully_body_entered(body):
	_ready()
