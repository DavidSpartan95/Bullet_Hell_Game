extends Timer

var enemy1 = preload("res://Enemy.tscn")
@onready var player = get_node("../CharacterBody2D")
func _on_timeout():
	
	randomize()
	var enemys = [enemy1]
	var kinds = enemys[randi()% enemys.size()]
	var enemy = kinds.instantiate()
	enemy.player = player
# Ensure the enemy is at least 500 points away on both x and y coordinates
	var x_offset = randf_range(500, 990)
	var y_offset = randf_range(500, 590)
	if randf() < 0.5:
		x_offset = -x_offset
	if randf() < 0.5:
		y_offset = -y_offset
	
	enemy.position = Vector2(player.position.x + x_offset, player.position.y + y_offset)
	enemy.enemy_move_speed = enemy.enemy_move_speed + (5*player.kills)
	add_child(enemy)
	
	
	wait_time = 5/(player.kills+1)
