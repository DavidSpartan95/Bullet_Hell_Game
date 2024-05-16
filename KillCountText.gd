extends RichTextLabel



var kills = 0
func _ready():
	position = Vector2(get_viewport_rect().size.x/3 , 0)
	pass
	
func _process(delta):
	text = "Kills: " + str(kills)
