extends Node

var score = 0 setget set_score


onready var scoreLabel = $ScoreLabel

func set_score(value):
	score = value
	scoreLabel.text = "Score = " + str(score)

#func _process(delta):
#	if Input.is_action_just_pressed("ui_cancel"):
#		get_tree().change_scene("res://PauseMenu.tscn")

