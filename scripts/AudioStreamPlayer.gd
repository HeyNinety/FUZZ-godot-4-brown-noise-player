extends AudioStreamPlayer


func _on_play_button_toggled(toggled_on):
	if toggled_on == true:
		self.play()
	else:
		self.stop()
