extends CharacterBody2D

# Speed at which the enemy moves
@export var enemy_move_speed = 50
# Player's node path (adjust as necessary)
@onready var player: Node

func _process(delta):
	if player:
		# Calculate the direction to the player
		var direction = (player.global_position - global_position).normalized()
		velocity = Vector2(direction.x,direction.y) * enemy_move_speed
		# Move the enemy towards the player
		move_and_slide()



