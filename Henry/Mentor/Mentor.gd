extends Area2D

func _input(event):
	if event.is_action_pressed("game_usage") and len(get_overlapping_bodies()) > 0:
		find_and_use_dialogue()
	if event.is_action_pressed("return"):
		return
func find_and_use_dialogue():
	var dialogue_player = get_node_or_null("Dialogueplayer")
	if dialogue_player:
		dialogue_player.next_line()

func _on_Mentor_body_entered(_body):
	print("Works")

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
