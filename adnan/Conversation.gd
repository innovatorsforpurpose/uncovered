extends CanvasLayer


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	visible = false
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("game_usage"):
		get_node("/root/RootScene/BASEMENT/Converstaion/Text1").visible = false
		get_node("/root/RootScene/BASEMENT/Converstaion/Text2").visible = true
	
		
	pass


func _on_Area3_body_entered(body):
	if body.name == "MC":
		get_node("/root/RootScene/BASEMENT/Converstaion").visible = true
	pass # Replace with function body.
