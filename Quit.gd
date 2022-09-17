extends PopupPanel



func _process(delta):
	if Input.is_action_just_released("pause"):
		visible = false


func _on_quit_without_saving_pressed():
	visible = true


func _on_quit_pressed():
	get_tree().paused = false
	get_tree().change_scene("res://main menu.tscn");



func _on_dont_quit_pressed():
	visible = false
