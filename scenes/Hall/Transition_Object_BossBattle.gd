extends Spatial
var framecount = 0
var seconds = 0
# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var STOP = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass# Replace with function body.
	"""
func _process(delta):
	framecount += 1
	if framecount%60 == 0:
		seconds += 1
		print(str(seconds))
	"""
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _on_Area_input_event(camera, event, position, normal, shape_idx):
	if event is InputEventMouseButton:
		if event.button_index ==BUTTON_LEFT and event.pressed == true:
			$CSGSphere.visible = false
			print("I am here sir i have done it ")
			get_node("/root/RootScene/Door1/AnimationPlayer").play("open")
			get_node("/root/RootScene/MCSRevengeTransport/BossBattleTimer").start(2)


func _on_Timer_timeout():
	#print("transition")
	var success = true# ProjectSettings.load_resource_pack("res://packs/UncoveredMinigame.zip")
	if success:
		get_tree().change_scene("res://Bossgame_.tscn")
	else:
		print("could not load uncovered minigame")
