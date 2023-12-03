extends Control

@onready var image = get_node("ImagePanel/TextureRect")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass



func _on_brightness_toggle_toggled(toggled_on):
	if toggled_on == true:
		image.modulate = Color(1,1,1,.5)
	else:
		image.modulate = Color (1,1,1,1)
