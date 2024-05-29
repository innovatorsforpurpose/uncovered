extends Node2D

# VIDEO USED ||| https://www.youtube.com/watch?v=FHYb63ppHmk&list=PLY1jY0hbmKxBvcEHa0k5Aw8_MKoB6jrRU |||


const SlotClass = preload("res://minigames/Escape-room/scripts/Slot.gd")
onready var inventory_slots = $GridContainer
var holding_item = null

# Called when the node enters the scene tree for the first time.
func _ready():
	self.scale = Vector2(0.13,0.13)
	for inv_slot in inventory_slots.get_children():
		inv_slot.connect("gui_input", self, "slot_gui_input",[inv_slot])

func slot_gui_input(event: InputEvent, slot: SlotClass):
	if event is InputEventMouseButton:
		if event.button_index == BUTTON_LEFT && event.pressed:
			if holding_item != null:
				if !slot.Item:
					slot.putIntoSlot(holding_item)
					holding_item = null
				else:
					var temp_item = slot.Item
					slot.pickFromSlot()
					temp_item.global_position = event.global_position
					slot.putIntoSlot(holding_item)
					holding_item = temp_item
			elif slot.Item:
				holding_item = slot.Item
				slot.pickFromSlot()
				holding_item.global_position = get_global_mouse_position()

func _input(event):
	if holding_item:
		holding_item.global_position = get_global_mouse_position()
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
