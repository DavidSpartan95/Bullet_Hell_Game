extends CharacterBody2D
@onready var sprite_2d = $Sprite2D
# Speed at which the enemy moves
@export var enemy_move_speed = 50
# Player's node path (adjust as necessary)
@onready var player: Node
var enemy_point = 1
func _process(delta):
	
	if player:
		for i in range(get_slide_collision_count()):
			var collision = get_slide_collision(i)
			var collider = collision.get_collider()
			if collider == player:
				print("Collision with player detected")
				get_tree().reload_current_scene()
				return
			elif  collider.is_in_group("Bullet"):
				queue_free()  # Remove this enemy instance
				collider.queue_free()  # Remove the bullet instance
				player.kills = player.kills + enemy_point
				enemy_point = 0
				
			
	
		# Calculate the direction to the player
		var direction = (player.global_position - global_position).normalized()
		velocity = direction * enemy_move_speed
		# Move the enemy towards the player
		move_and_slide()
		# flip sprite to corresponding movement direction 
		var movingLeft = velocity.x < 0
		sprite_2d.flip_h = movingLeft
		
