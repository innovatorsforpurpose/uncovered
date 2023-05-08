extends Area

var target = 0
var path = []

var dialogue_player = null

func _on_Door_body_entered(body):
		find_and_use_dialogue()

func find_and_use_dialogue():
	dialogue_player = get_node_or_null("Dialogueplayer")
	if dialogue_player:
		if not dialogue_player.next_line():
			target = 1

func _process(_delta):
	if len(get_overlapping_bodies()) == 0:
		dialogue_player = get_node_or_null("Dialogueplayer")
		if dialogue_player:
			dialogue_player.reset()

func _on_Door_body_exited(body):
	dialogue_player = get_node_or_null("Dialogueplayer")
	if dialogue_player:
		dialogue_player.reset()

#extends Area

#var target = 0
#var path = []

#var dialogue_player = null

#func _on_Door_body_entered(body):
		#find_and_use_dialogue()

#func find_and_use_dialogue():
	#dialogue_player = get_node_or_null("Dialogueplayer")
	#if dialogue_player:
		#if not dialogue_player.next_line():
			#target = 0

#func _process(_delta):
	#if len(get_overlapping_bodies()) == 0:
		#dialogue_player = get_node_or_null("Dialogueplayer")
		#if dialogue_player:
			#dialogue_player.reset()

#func _on_Door_body_exited(body):
	#dialogue_player = get_node_or_null("Dialogueplayer")
	#if dialogue_player:
		#dialogue_player.reset()
