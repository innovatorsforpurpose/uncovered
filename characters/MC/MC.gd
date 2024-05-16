extends KinematicBody
var player_active = true
var gravity = Vector3.DOWN * 15
var walkspeed = 5
var speed
var jump_speed = 10
var jump_impulse = 15
var spin = 0.05
var velocity = Vector3.ZERO
#var jump = false
var sprintspeed = 10
var flag = 1
var initial_position
var count = 0
var check = 1
var player = true
export(bool) var immobile
var Zangchi = false
var target = 0
var path = []

func _ready():
	initial_position = get_global_transform().origin
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
	immobile = false
	
func get_input():
	if Input.is_action_pressed("shift"):
		speed = sprintspeed
		gravity = Vector3.DOWN * 98
	else:
		speed = walkspeed
		gravity = Vector3.DOWN * 98 
	var vy = velocity.y
	velocity = Vector3()
	#print(immobile)
	if not immobile:
		if Input.is_action_pressed("move_forward"):
			velocity += -transform.basis.z * speed
		if Input.is_action_pressed("move_back"):
			velocity += transform.basis.z * speed
		if Input.is_action_pressed("move_right"):
			velocity += transform.basis.x * speed
		if Input.is_action_pressed("move_left"):
			velocity += -transform.basis.x * speed
		
	if Input.is_action_just_pressed("mouse_toggle") and Input.get_mouse_mode() == Input.MOUSE_MODE_CAPTURED:
		Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	elif Input.is_action_just_pressed("mouse_toggle"):
		Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
		
	velocity.y = vy
func _physics_process(delta):
	if is_on_floor() and Input.is_action_just_pressed("jump"):
		velocity.y += jump_impulse
	velocity += gravity * delta
	get_input()
	velocity = move_and_slide(velocity, Vector3.UP)
	if target == 1 and path.size() == 0 and toggle_the_player(false):
		path = [Vector3(-25,6.57,-21), Vector3(-45,6.57,-21),Vector3(-45,6.57,-28)]
	if path.size() > 0:
		velocity = Vector3(path[0].x - transform.origin.x, path[0].y - transform.origin.y, path[0].z - transform.origin.z)
		var distance =  velocity.length()
		if distance <= speed:
			target = 0
			path = path.slice(1,path.size())
			velocity = Vector3(0,0,0)
			if velocity == Vector3(0,0,0) and path == path.slice(1,path.size()):
				target = 2
		else:
			velocity = velocity.normalized() * speed
	transform.origin += velocity
	
	if target == 2:
		path = [Vector3(-45,6.57,-28)]
		target = 3
		
		#if jump and is_on_floor():
func _unhandled_input(event):
	if event is InputEventMouseMotion:
		if event.relative.x > 0:
			rotate_y(-lerp(0, spin, event.relative.x/12.5))
		if event.relative.x < 0:
			rotate_y(-lerp(0, spin, event.relative.x/12.5))

func toggle_the_player(on):
	var player = get_node("/root/RootScene/Node2D/Enviroment/MC")
	if player:
		player.set_active(on)

func set_active(active):
	player_active = active
	#print(player_active)
	set_physics_process(active)
	set_process(active)
	set_process_input(active)

func _on_Timer2_timeout():
	count = count+1

func _on_Zach_body_entered(body):
	if body.name == "MC":
		target = 1
		toggle_the_player(false)
