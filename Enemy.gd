extends CharacterBody2D

# Speed at which the enemy moves
@export var enemy_move_speed = 50
# Player's node path (adjust as necessary)
@onready var player: Node

func _process(delta):
	if player:
		for i in range(get_slide_collision_count()):
			var collision = get_slide_collision(i)
			if collision.get_collider() == player:
				print("Collision with player detected")
				get_tree().reload_current_scene()
				return
	
		# Calculate the direction to the player
		var direction = (player.global_position - global_position).normalized()
		velocity = direction * enemy_move_speed
		# Move the enemy towards the player
		move_and_slide()
		
func _on_Enemy_body_entered(body):
	print("test")
	if body.name == "player":
		# Collision with player detected, trigger game reset
		get_tree().reload_current_scene()  # Reset the game

