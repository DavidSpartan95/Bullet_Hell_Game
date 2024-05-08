extends Timer

var enemy1 = preload("res://Enemy.tscn")
@onready var player = get_node("../CharacterBody2D")
func _on_timeout():
	
	randomize()
	var enemys = [enemy1]
	var kinds = enemys[randi()% enemys.size()]
	var enemy = kinds.instantiate()
	enemy.player = player
	enemy.position = Vector2(randf_range(10,990), randf_range(10,590))
	add_child(enemy)
	wait_time = randf_range(5,7)
