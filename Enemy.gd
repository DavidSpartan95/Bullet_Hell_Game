extends CharacterBody2D

# Speed at which the enemy moves
var speed: float = 100.0
@export var enemy_move_speed = 250
# Player's node path (adjust as necessary)
@onready var player = get_node("../CharacterBody2D")
var eny_velo = Vector2(0,0)
func _process(delta):
	if player:
		# Calculate the direction to the player
		var direction = (player.global_position - global_position).normalized()
		print(direction.x)
		velocity = Vector2(direction.x,direction.y) * speed
		# Move the enemy towards the player
		move_and_slide()



