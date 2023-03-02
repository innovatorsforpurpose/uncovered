extends Area3D



func _input(event):
	if event.is_action_pressed("game_usage") and len(get_overlapping_bodies()) > 1:
		find_and_use_dialogue()

func find_and_use_dialogue():
	var dialogue_player = get_node_or_null("Dialogueplayer")
	if dialogue_player:
		if not dialogue_player.next_line():
			print("now changing target")

func _on_IDesk_body_entered(body):
	var dialogue_player = get_node_or_null("Dialogueplayer")
	if dialogue_player:
		dialogue_player.reset()

func _process(_delta):
	if len(get_overlapping_bodies()) == 0:
		var dialogue_player = get_node_or_null("Dialogueplayer")
		if dialogue_player:
			dialogue_player.reset()
