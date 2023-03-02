extends Sprite2D

var velocity = 50
#
func _ready():
	if Input.is_action_pressed("left"):
				velocity.x = 1
				$Sprite2D.flip_h = false
				
	if Input.is_action_pressed("down"):
		velocity.y += 1
