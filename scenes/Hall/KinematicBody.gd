extends KinematicBody
export (int) var speed = 200

var velocity = Vector3()
var time = 0

func get_input():
	velocity = Vector3()
	if Input.is_action_pressed("right"):
		velocity.x += 1
	if Input.is_action_pressed("left"):
		velocity.x -= 1
	if Input.is_action_pressed("down"):
		velocity.y += 1
	if Input.is_action_pressed("up"):
		velocity.y -= 1
	if time > 2:
		velocity.y -= 2
	velocity = velocity.normalized() * speed

func _physics_process(delta):
	time += delta
	get_input()
	velocity = move_and_slide(velocity)

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
