extends Timer

var enemy1 = preload("res://Enemy.tscn")
var bullet = preload("res://bullet.tscn")
@onready var player = get_node("../CharacterBody2D")
func _on_timeout():
	
	randomize()
	var enemys = [enemy1]
	var kinds = enemys[randi()% enemys.size()]
	var enemy = kinds.instantiate()
	enemy.player = player
	enemy.position = Vector2(randf_range(10,990), randf_range(10,590))
	add_child(enemy)
	
	print(player.position)
	# Spawn bullet at player's position
	var new_bullet = bullet.instantiate()
	new_bullet.position = player.position
	add_child(new_bullet)
	
	
	wait_time = randf_range(5,7)
