extends PopupPanel


#closes popup when escape pressed
func _process(_delta):
	if Input.is_action_just_released("pause"):
		visible = false

#opens confirmation popup when quit without saving button pressed
func _on_quit_without_saving_pressed():
	visible = true

#unpauses game and changes scene to main menu when comfirmation button pressed
func _on_quit_pressed():
	get_tree().paused = false
	get_tree().change_scene("res://main menu.tscn");


#
func _on_dont_quit_pressed():
	visible = false
