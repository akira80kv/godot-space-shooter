extends Node

var score = 0

onready var scoreLabel = $ScoreLabel

func _on_Enemy_score_up():
	score += 10
	scoreLabel.text = "Score = " + str(score)
