extends Area

func _input(event):
	if event.is_action_pressed("game_usage") and len(get_overlapping_bodies()) > 1:
		pass
		#find_and_use_dialogue()
func find_and_use_dialogue():
	var dialogue_player = get_node_or_null("DialoguePlayer")
	if dialogue_player:
		dialogue_player.next_line()
func _on_Laura_body_exited(_body):
	var dialogue_player = get_node_or_null("DialoguePlayer")
	if dialogue_player:
		dialogue_player.reset()
func _process(_delta):
	if len(get_overlapping_bodies()) == 0:
		var dialogue_player = get_node_or_null("DialoguePlayer")
		if dialogue_player:
			dialogue_player.reset()
