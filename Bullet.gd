extends CharacterBody2D


const SPEED = 100.0

func _process(delta):
	
		# Calculate the direction to the player
		var direction = Vector2(10,10)
		velocity = direction * SPEED
		# Move the enemy towards the player
		move_and_slide()

func _ready():
	add_to_group("Bullet")

