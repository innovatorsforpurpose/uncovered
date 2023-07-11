extends Spatial
var framecount = 0
var seconds = 0

var STOP = 0




# Called when the node enters the scene tree for the first time.
func _ready():
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Area_input_event(camera, event, position, normal, shape_idx):
	if event is InputEventMouseButton:
		if event.button_index ==BUTTON_LEFT and event.pressed == true:
			$CSGSphere2.visible = false
			get_node("/root/RootScene/Door1/AnimationPlayer").play("open")
			get_node("/root/RootScene/CircuitTransition/circuitTimer").start(2)
			
			
			

func _on_circuitTimer_timeout():
	var success = true# ProjectSettings.load_resource_pack("res://packs/UncoveredMinigame.zip")
	if success:
		get_tree().change_scene("res://Dev_MS/Minigame/games.tscn")
