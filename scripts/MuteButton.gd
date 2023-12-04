extends TextureButton


var audio_bus = AudioServer.get_bus_index("Master")


func _on_toggled(_toggled_on):
	AudioServer.set_bus_mute(audio_bus, not AudioServer.is_bus_mute(audio_bus))
