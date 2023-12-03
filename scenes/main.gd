extends Control

@onready var image = get_node("ImagePanel/TextureRect")

var audio_bus = AudioServer.get_bus_index("Master")


func _on_brightness_toggle_toggled(toggled_on):
	if toggled_on == true:
		image.modulate = Color(1,1,1,.5)
	else:
		image.modulate = Color (1,1,1,1)


func _on_play_button_toggled(toggled_on):
	if toggled_on == true:
		$AudioStreamPlayer.play()
	else:
		$AudioStreamPlayer.stop()


func _on_mute_button_toggled(_toggled_on):
	AudioServer.set_bus_mute(audio_bus, not AudioServer.is_bus_mute(audio_bus))
