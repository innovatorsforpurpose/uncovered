extends Node

var active = false

func disable_player_input():
	get_tree().get_root().set_disable_input(true)


func enable_player_input():
	get_tree().get_root().set_disable_input(false)
