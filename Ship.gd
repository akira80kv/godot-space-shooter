extends Area2D
export(int) var SPEED = 100
func _process(delta):
	if Imput.is_action_pressed("ui_up")
		position.y -= SPEED * delta
