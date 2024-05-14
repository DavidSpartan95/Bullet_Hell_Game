extends CharacterBody2D

const SPEED = 250.0
@onready var direction: Vector2
func _process(delta):
	
		# Calculate the direction to the player
		velocity = direction.normalized() * SPEED
		# Move the enemy towards the player
		move_and_slide()

func _ready():
	add_to_group("Bullet")

