extends CharacterBody2D

func _process(delta):
	velocity.y = 100
	
	var collision = move_and_collide(velocity * delta)
	if collision and collision.get_collider().is_in_group("player"):
		get_tree().quit()
