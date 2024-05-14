extends Timer

var bullet = preload("res://bullet.tscn")
@onready var player = get_node("../CharacterBody2D")
func _on_timeout():
	# Spawn bullet at player's position
	var new_bullet = bullet.instantiate()
	new_bullet.position = player.position
	add_child(new_bullet)
	
	wait_time = 1
