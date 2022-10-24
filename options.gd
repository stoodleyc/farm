extends PopupPanel



#opens menu when options pressed
func _on_options_pressed():
	visible = true

#closes menu when back pressed
func _on_back_pressed():
	visible = false


#when the fullscreen button is pressed fullscreen gets toggled
func _on_fullscreen_toggled(on):
	if on:
		OS.window_fullscreen = true
	else:
			OS.window_fullscreen = false

#close pop up when escape pressed
func _process(delta):
	if Input.is_action_just_released("pause"):
		visible = false
