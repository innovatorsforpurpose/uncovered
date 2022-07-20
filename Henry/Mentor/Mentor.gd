extends Area

func _on_Mentor_ready():
	pass

func _input(event):
	print (len(get_overlapping_bodies()) > 1)
	if event.is_action_pressed("game_usage") and len(get_overlapping_bodies()) > 1:
		find_and_use_dialogue()
func find_and_use_dialogue():
	var dialogue_player = get_node_or_null("Dialogueplayer")
	if dialogue_player:
		dialogue_player.next_line()
func _on_Mentor_body_exited(_body):
	var dialogue_player = get_node_or_null("Dialogueplayer")
	if dialogue_player:
		dialogue_player.reset()
	print("left")
func _process(_delta):
	if len(get_overlapping_bodies()) == 0:
		var dialogue_player = get_node_or_null("Dialogueplayer")
		if dialogue_player:
			dialogue_player.reset()
		
