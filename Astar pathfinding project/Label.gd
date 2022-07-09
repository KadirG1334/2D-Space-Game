extends Label

onready var cd = get_parent().get_node("countdown")
export(Color,RGB) var text_color
func _ready():
	set_modulate(text_color)
func hidecountdown():
	print("çalıltı")

