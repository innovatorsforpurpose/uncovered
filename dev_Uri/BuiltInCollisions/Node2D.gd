extends Node2D

var rng = RandomNumberGenerator.new()
onready var view = get_viewport().size

var WORLD_SIZE = 50000
var TILES = 25000

func _ready():
	for i in range(TILES):
		create_tile()

func create_tile():
	var clone = get_node("/root/Node2D/KinObjectBody").duplicate()
	rng.randomize()
	clone.position.x = rng.randf_range(-WORLD_SIZE, WORLD_SIZE)
	clone.position.y = rng.randf_range(-WORLD_SIZE, WORLD_SIZE)
	add_child(clone)
