extends Spatial
var velocity = speed 
var speed = 50 
func _ready():
	pass
func _move_and_collide(delta):
	var collision = _move_and_collide(velocity * delta) 
	if collision: 
		print("Hit", collision.collider.name)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
