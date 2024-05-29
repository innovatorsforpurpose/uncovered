extends Sprite

var frame_cnt = 0



func _on_Button2_pressed():
	frame_cnt += 1
	if frame_cnt >= 4:
		frame_cnt = 0
	self.frame = frame_cnt
