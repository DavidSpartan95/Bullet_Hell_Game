extends Timer

var bullet = preload("res://bullet.tscn")
@onready var player = get_node("../CharacterBody2D")
var lastDirection = Vector2(1,0)
func _on_timeout():
	# Spawn bullet at player's position
	var new_bullet = bullet.instantiate()
	new_bullet.position = player.position
	if player.direction == Vector2(0,0):
		new_bullet.direction = lastDirection
	else:
		new_bullet.direction = player.direction
		lastDirection = player.direction
		
	
	add_child(new_bullet)
	print(player.direction)
	wait_time = 1
