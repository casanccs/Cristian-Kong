extends Node2D

@onready var enemies = $Enemies

func _on_lip_spawner_timeout():
	var enemy = enemies.duplicate()
	enemy.position.x = randi_range(-300,500)
	enemy.position.y = -50
	add_child(enemy)
