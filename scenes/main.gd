extends Control

@onready var darken = get_node("ImagePanel/ColorRect")

var audio_bus = AudioServer.get_bus_index("Master")

func _ready():
	darken.modulate = Color (0,0,0,0)

func _on_brightness_toggle_toggled(toggled_on):
	if toggled_on == true:
		darken.modulate = Color(1,1,1,.5)
	else:
		darken.modulate = Color (0,0,0,0)


func _on_play_button_toggled(toggled_on):
	if toggled_on == true:
		$AudioStreamPlayer.play()
	else:
		$AudioStreamPlayer.stop()


func _on_mute_button_toggled(_toggled_on):
	AudioServer.set_bus_mute(audio_bus, not AudioServer.is_bus_mute(audio_bus))
