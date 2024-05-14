extends CharacterBody2D


const SPEED = 300.0

func _process(delta):
	
		# Calculate the direction to the player
		var direction = (Vector2(10,10) - global_position).normalized()
		velocity = direction * SPEED
		# Move the enemy towards the player
		move_and_slide()



