extends Area2D

func _ready():
	pass

func _input(event):
	if event is InputEventMouseButton:
		#print(event)
		#print("click2")
		var DialogueBox = get_node("..")
		#DialogueBox._ready()
