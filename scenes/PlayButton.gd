extends TextureButton


func _on_toggled(toggled_on):
	if toggled_on == true:
		$AudioStreamPlayer.play()
	else:
		$AudioStreamPlayer.stop()
