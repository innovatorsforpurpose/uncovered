extends Button
var is_pressed = true

#func _ready():
#	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Backpack_pressed():
	#print(is_pressed)
	if is_pressed == true:
		is_pressed = false
		$Inventory/AnimationPlayer.play("grid-scale")
	else:
		is_pressed = true
		$Inventory/AnimationPlayer.play_backwards("grid-scale")

