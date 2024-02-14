extends Node2D

@onready var enemies = $Enemies
@onready var pathEnemy = $Path2D

func _on_lip_spawner_timeout():
	var enemy = enemies.duplicate()
	enemy.position.x = randi_range(20,580)
	enemy.position.y = -50
	add_child(enemy)


func _on_dog_timer_timeout():
	var dog = pathEnemy.duplicate()
	
	add_child(dog)
