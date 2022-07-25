extends Area

func _on_GC_ready():
	pass

func _input(event):
	if event.is_action_pressed("game_usage") and len(get_overlapping_bodies()) > 1:
		find_and_use_dialogue()
func find_and_use_dialogue():
	var dialogue_playerI = get_node_or_null("Dialogueplayer I")
	if dialogue_playerI:
		dialogue_playerI.next_line()
func _on_GC_body_exited(_body):
	var dialogue_playerI = get_node_or_null("Dialogueplayer I")
	if dialogue_playerI:
		dialogue_playerI.reset()
func _process(_delta):
	if len(get_overlapping_bodies()) == 0:
		var dialogue_playerI = get_node_or_null("Dialogueplayer I")
		if dialogue_playerI:
			dialogue_playerI.reset()
