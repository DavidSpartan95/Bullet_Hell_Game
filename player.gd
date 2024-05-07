extends CharacterBody2D

@export var move_speed = 250

func _process(delta):
	velocity = $UI/Joystick.get_velo() * move_speed
	#linear_velocity = velocity  # Set the linear_velocity directly
	move_and_slide()  # Call this with no arguments in Godot 4 for CharacterBody2D
