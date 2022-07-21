extends Node

export (PackedScene) var mob_scene = preload("Mob.tscn")


func _ready():
	randomize()
	
func _on_MobTimer_timeout():
	var mob = mob_scene.instance()
	
	var mob_spawn_location =  $SpawnPath/SpawnLocation
	mob_spawn_location.until_offset = randf()
		
	var player_position = $Player.transform.origin
	
	add_child(mob)
	
	mob.initilize(mob_spawn_location.translation, player_position)
	
