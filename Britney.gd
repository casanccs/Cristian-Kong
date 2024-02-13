extends RigidBody2D

var speed = 200

func _process(delta):
	var movement = Vector2.ZERO
	
	if Input.is_action_pressed("right"):
		movement.x += 1
	if Input.is_action_pressed("left"):
		movement.x -= 1
		
	movement = movement.normalized()
	print(movement)
	apply_central_impulse(movement * speed * delta)
