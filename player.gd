extends CharacterBody2D

@export var move_speed = 100
var direction = Vector2(0,0)
var kills = 0
func _process(delta):
	direction = $UI/Joystick.get_velo().normalized()
	$UI/KillCountText.kills = kills
	velocity = direction * move_speed
	#linear_velocity = velocity  # Set the linear_velocity directly
	move_and_slide()  # Call this with no arguments in Godot 4 for CharacterBody2D
