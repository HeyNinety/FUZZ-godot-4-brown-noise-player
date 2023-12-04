extends HSlider


var bus_name: String
var bus_index: int


func _ready() -> void:
	#sets starting value at half volume
	self.value = 0.125
	
	value = db_to_linear(AudioServer.get_bus_volume_db(bus_index))


func _on_value_changed(new_value: float) -> void:
	AudioServer.set_bus_volume_db(bus_index, linear_to_db(new_value))


func _on_mouse_exited():
	self.release_focus()
