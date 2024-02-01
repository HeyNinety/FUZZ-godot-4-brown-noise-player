extends ColorRect


func _ready():
	self.modulate = Color (0,0,0,0)


func _on_brightness_toggle_toggled(toggled_on):
	if toggled_on == true:
		self.modulate = Color(1,1,1,.5)
	else:
		self.modulate = Color (0,0,0,0)
