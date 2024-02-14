extends Area2D

func _ready():
	get_parent().progress = 0

func _process(delta):
	const move_speed = 200.0
	
	get_parent().progress += move_speed * delta
