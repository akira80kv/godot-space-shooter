extends Area2D

const ExplotionEffect = preload("res://ExplotionEffect.tscn")

export(int) var SPEED = 20
export(int) var ARMOR = 3

func _process(delta):
	position.x -= SPEED * delta


func _on_Enemy_body_entered(body):
	body.queue_free()
	ARMOR -= 1
	if ARMOR <= 0:
		queue_free()


func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
	
func _exit_tree():
	var main = get_tree().current_scene
	var explotionEffect = ExplotionEffect.instance()
	main.add_child(explotionEffect)
	explotionEffect.global_position = global_position
	
	
	
	
	
	
	
	
	
