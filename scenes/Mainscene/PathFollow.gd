extends PathFollow
var runspeed = 25
var x = 19
var sleeping = false

func _process(delta: float) -> void:
	
	set_offset(get_offset() + runspeed * delta)
	
	if (get_unit_offset() == 0.8):
		pass
