extends Spatial


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
[gd_scene load_steps=4 format=2]

[sub_resource type="Animation" id=1]
length = 0.001
tracks/0/type = "value"
tracks/0/path = NodePath(".:color")
tracks/0/interp = 1
tracks/0/loop_wrap = true
tracks/0/imported = false
tracks/0/enabled = true
tracks/0/keys = {
"times": PoolRealArray( 0 ),
"transitions": PoolRealArray( 1 ),
"update": 0,
"values": [ Color( 0, 0, 0, 0 ) ]
}
tracks/1/type = "method"
tracks/1/path = NodePath("AnimationPlayer")
tracks/1/interp = 1
tracks/1/loop_wrap = true
tracks/1/imported = false
tracks/1/enabled = true
tracks/1/keys = {
"times": PoolRealArray(  ),
"transitions": PoolRealArray(  ),
"values": [  ]
}

[sub_resource type="Animation" id=2]
resource_name = "begining"
length = 3.0
tracks/0/type = "value"
tracks/0/path = NodePath(".:color")
tracks/0/interp = 1
tracks/0/loop_wrap = true
tracks/0/imported = false
tracks/0/enabled = true
tracks/0/keys = {
"times": PoolRealArray( 0, 1.2, 3 ),
"transitions": PoolRealArray( 1, 1, 1 ),
"update": 0,
"values": [ Color( 0, 0, 0, 1 ), Color( 0, 0, 0, 1 ), Color( 0, 0, 0, 0 ) ]
}

[sub_resource type="Animation" id=3]
resource_name = "fade"
length = 0.802
tracks/0/type = "value"
tracks/0/path = NodePath(".:color")
tracks/0/interp = 2
tracks/0/loop_wrap = true
tracks/0/imported = false
tracks/0/enabled = true
tracks/0/keys = {
"times": PoolRealArray( 0, 0.8 ),
"transitions": PoolRealArray( 1, 2 ),
"update": 0,
"values": [ Color( 0, 0, 0, 0 ), Color( 0, 0, 0, 1 ) ]
}
tracks/1/type = "method"
tracks/1/path = NodePath(".")
tracks/1/interp = 1
tracks/1/loop_wrap = true
tracks/1/imported = false
tracks/1/enabled = true
tracks/1/keys = {
"times": PoolRealArray(  ),
"transitions": PoolRealArray(  ),
"values": [  ]
}
tracks/2/type = "value"
tracks/2/path = NodePath(".:visible")
tracks/2/interp = 1
tracks/2/loop_wrap = true
tracks/2/imported = false
tracks/2/enabled = true
tracks/2/keys = {
"times": PoolRealArray( 0 ),
"transitions": PoolRealArray( 1 ),
"update": 1,
"values": [ true ]
}

[node name="fade2" type="ColorRect"]
margin_left = 3.0
margin_top = 1.0
margin_right = 1028.0
margin_bottom = 611.0
color = Color( 0, 0, 0, 0 )

[node name="AnimationPlayer" type="AnimationPlayer" parent="."]
playback_speed = 4.0
anims/RESET = SubResource( 1 )
anims/begining = SubResource( 2 )
anims/fade = SubResource( 3 )

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
