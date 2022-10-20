extends PopupPanel

onready var data = SaveFiles.game_data


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





func _on_load_pressed():
	SaveFiles.load_data()
	SaveFiles.enter = "0"
	get_tree().paused = false
	if data.area == "farm":
		get_tree().change_scene("res://farm.tscn")
	else:
		get_tree().change_scene("res://shops.tscn")
