extends Button

var design = 0
onready var goals = get_node("/root/CreationScene/GoalHolder")
onready var player = get_node("/root/CreationScene/PlayerBody")
onready var score = get_node("/root/CreationScene/ScoreLabel")
onready var main = get_node("/root/CreationScene")
onready var settings = get_node("/root/CreationScene/Settings")

# Checks if the current canvas is equal to the one the player is checking
func click():
	var score = 0
	var total = 0
	for id in goals.designs[design]:
		total += 1
		if total in player.clones.keys():
			var actual = player.clones[total].get_children()[1].id
			if id == player.clones[total].get_children()[1].id:
				score += 1
		elif id == "NONE":
			score += 1
	goals.last_score = score
	goals.total_score += score
	main.remove_child(goals.holders[design])
	goals.holders.erase(design)
	total = goals.holders.size()
	for holder in goals.holders:
		if holder > design:
			goals.holders[holder].position.x -= (((settings.GRID_SQUARE_MARGIN/goals.reduction_scale)*settings.GRID_LENGTH)+(settings.GRID_MARGIN/goals.reduction_scale)*3)
		total -= 1
	print(goals.holders)
	update_score()

func update_score():
	score.text = "Score: "+str(goals.last_score)+"/25\n\n"
	score.text += "Total Score: "+str(goals.total_score)
