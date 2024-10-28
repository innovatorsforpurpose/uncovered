extends Node

func _input(event: InputEvent):
	if OS.is_debug_build() && event.is_action_pressed("Debug_acquire_Door_Key") && PlayerInventory.inventory.size() == 0:
		PlayerInventory.add_item("Door Key")
		emit_signal("emit")
	if event.is_action_pressed("pause"):
		emit_signal("paused")
		if get_tree().paused == false:
			get_tree().paused = !get_tree().paused
		else:
			get_tree().paused = !get_tree().paused
