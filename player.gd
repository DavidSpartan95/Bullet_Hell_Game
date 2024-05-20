extends CharacterBody2D

@onready var sprite_2d = $Sprite2D
@export var move_speed = 100
var direction = Vector2(0,0)
var kills = 0

func _process(delta):
	# turn on run animation if the player is moving
	if (velocity.x > 1 || velocity.x < -1 || velocity.y > 1 || velocity.y < -1):
		sprite_2d.animation = "running"	
	else:
		sprite_2d.animation = "default"	 
	# get movement direction from joystick
	direction = $UI/Joystick.get_velo().normalized()
	$UI/KillCountText.kills = kills
	velocity = direction * move_speed
	move_and_slide()
	# flip sprite to corresponding movement direction 
	var movingLeft = velocity.x < 0
	sprite_2d.flip_h = movingLeft
