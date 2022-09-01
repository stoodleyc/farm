extends PopupPanel



func _ready():
	pass # Replace with function body.





#open and close menu
func _on_options_pressed():
	visible = true

func _on_back_pressed():
	visible = false


#fullscreen option
func _on_fullscreen_toggled(on):
	if on:
		OS.window_fullscreen = true
	else:
			OS.window_fullscreen = false


func _process(delta):
	if Input.is_action_just_released("pause"):
		visible = false
