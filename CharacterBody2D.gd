extends CharacterBody2D

var on_ladder = false
var near_ladder = false

func _process(delta):
	
	velocity.y += 6
	
	velocity.x = 0
	if Input.is_action_pressed("right"):
		velocity.x = 175
	if Input.is_action_pressed("left"):
		velocity.x = -175
	
	if is_on_floor():
		velocity.y = 0
	if is_on_ceiling():
		velocity.y = 1
	if is_on_floor() and Input.is_action_just_pressed("jump"):
		velocity.y = -300
		
	if not on_ladder and Input.is_action_just_pressed("climb") and near_ladder:
		on_ladder = true
		set_collision_mask_value(2, false)
	if on_ladder and near_ladder:
		velocity.y = 0
		if Input.is_action_pressed("climb"):
			velocity.y = -200
		if Input.is_action_pressed("drop"):
			velocity.y = 200
	move_and_slide()



func _on_area_body_entered(body):
	near_ladder = true


func _on_area_body_exited(body):
	near_ladder = false
	on_ladder = false
	set_collision_mask_value(2, true)


func _on_area_2d_body_entered(body):
	print("You Win!")
	
