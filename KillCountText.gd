extends RichTextLabel
var kills = 0
func _ready():
	pass
	
func _process(delta):
	text = "Kills: " + str(kills)
