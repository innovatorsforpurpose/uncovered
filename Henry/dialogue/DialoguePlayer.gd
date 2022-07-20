extends CanvasLayer

export(String, FILE, "Mc.json") var dialogue_file


func _on_Dialogueplayer_ready():
	_ready()

var dialogues = []
var current_dialogue_id = 0
var is_dialogue_active = false

func _ready():
	play()
	$NinePatchRect.visible = false
	
func play():
	if is_dialogue_active:
		return
	dialogues = load_dialogue()
	if dialogues == null:
		return
	is_dialogue_active = true
	$NinePatchRect.visible = true
	current_dialogue_id = -1
	
	
func reset():
	current_dialogue_id = 0

func next_line():
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
		return
	$NinePatchRect/Name.text = dialogues[current_dialogue_id]['name']
	$NinePatchRect/Message.text = dialogues[current_dialogue_id]['text']
	
func load_dialogue():
	var file = File.new()
	if file.file_exists(dialogue_file):
		print_debug("filename:" + dialogue_file)
		var err = file.open(dialogue_file, file.READ)
		if err != OK:
			print_debug("FAILURE TO LOAD")
			return
		else:
			return parse_json(file.get_as_text())


func _on_Timer_timeout():
	is_dialogue_active = false
func toggle_the_player(on):
	var player = get_tree().get_root().find_node("MC", true, false)
	if player:
		player.set_active(on)

func _on_Mentor_body_entered(_body):
	_ready()
