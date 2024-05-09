extends Area
const move_speed := 5.0
var currently_colliding = false


func _ready() -> void:
	visible = true

func _on_Area_body_entered(body):
	if body.name == "MC":
		currently_colliding = true
	else:
		currently_colliding = false
	print(currently_colliding,body)

func _physics_process(delta: float) -> void:
	pass
