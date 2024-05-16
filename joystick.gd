extends Area2D

@onready var big_circle = $BigCircle
@onready var small_circle = $BigCircle/SmallCircle

@onready var max_distance = $CollisionShape2D.shape.radius

var touched = false
func _ready():
	# Position the Joystick to the bottom right corner of the screen 
	position = Vector2(get_viewport_rect().size.x - max_distance*2, get_viewport_rect().size.y - max_distance*2)

func _input(event):
	if event is InputEventScreenTouch:
		var distance = event.position.distance_to(big_circle.global_position)
		if not touched:
			if distance<max_distance:
				touched = true
		else:
			small_circle.position = Vector2(0,0)
			touched = false

func _process(delta):
	if touched:
		small_circle.global_position = get_global_mouse_position()
		
func get_velo():
	var joy_velo = Vector2(0,0)
	joy_velo.x = small_circle.position.x / max_distance
	joy_velo.y = small_circle.position.y / max_distance
	return joy_velo

