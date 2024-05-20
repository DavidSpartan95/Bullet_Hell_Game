extends Timer

var enemy1 = preload("res://Enemy.tscn")
@onready var player = get_node("../CharacterBody2D")

func _on_timeout():
	
	var enemy = enemy1.instantiate()
	enemy.player = player
	# Ensure the enemy is at least 500 points away on both x and y coordinates
	var x_offset = randf_range(500, 990)
	var y_offset = randf_range(500, 590)
	#Randomize if the enemy spawns left or right side
	if randf() < 0.5:
		x_offset = -x_offset
	#Randomize if the enemy spawns up or down
	if randf() < 0.5:
		y_offset = -y_offset
	
	enemy.position = Vector2(player.position.x + x_offset, player.position.y + y_offset)
	enemy.enemy_move_speed = enemy.enemy_move_speed + (5*player.kills)
	add_child(enemy)
	wait_time = 5/(player.kills+1)
