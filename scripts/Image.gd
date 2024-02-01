extends TextureRect


var texture_variations_array: Array = [
	preload("res://assets/images/pexels-alan-cabello-1268339.jpg"),
	preload("res://assets/images/pexels-alfo-medeiros-12918477.jpg"),
	preload("res://assets/images/pexels-ferencz-istvan-10172222.jpg"),
	preload("res://assets/images/pexels-matt-hardy-2109758.jpg")
	]

func _ready():
	variate_texture()

func variate_texture():
	if texture_variations_array.size() > 1:
		var texture_id: int = randi() % texture_variations_array.size()
		var chosen_texture: Texture = texture_variations_array[texture_id]
		texture = chosen_texture
