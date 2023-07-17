extends Area
var currently_colliding = false
var dialogue_player = null

func _input(event):
	if event.is_action_pressed("game_usage") and currently_colliding:
		find_and_use_dialogue()
		#print("in_area_GC")
		#print(currently_colliding)

func find_and_use_dialogue():
	var dialogue_player = get_node_or_null("DialoguePlayer")
	if dialogue_player:
		dialogue_player.next_line()
func _on_GC_body_exited(_body):
	var dialogue_player = get_node_or_null("DialoguePlayer")
	if dialogue_player:
		dialogue_player.reset()
func _process(_delta):
	if len(get_overlapping_bodies()) == 0:
		var dialogue_player = get_node_or_null("DialoguePlayer")
		if dialogue_player:
			dialogue_player.reset()

func _on_Area_body_entered(body):
	if body.name == "MC":
		currently_colliding = true

func _on_Area_body_exited(_body):
	currently_colliding = false
