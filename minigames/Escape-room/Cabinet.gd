extends Button


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
func _ready():
	show()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if pressed == true:
		hide()
