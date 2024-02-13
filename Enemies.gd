extends CharacterBody2D

func _process(delta):
	velocity.y = 100
	
	move_and_slide()
