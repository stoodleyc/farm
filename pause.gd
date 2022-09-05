extends PopupPanel



func _process(delta):
	if Input.is_action_just_released("pause"):
		if visible == true:
			visible = false
			get_tree().paused = false
		else:
			visible = true
			get_tree().paused = true


func _on_resume_pressed():
	visible = false
