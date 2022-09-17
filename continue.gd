extends PopupPanel


func _on_continue_pressed():
	if SaveFiles.current == "user://save_1.save":
		get_tree().change_scene("res://farm.tscn");
	elif SaveFiles.current == "user://save_2.save":
		get_tree().change_scene("res://farm.tscn");
	elif SaveFiles.current == "user://save_3.save":
		get_tree().change_scene("res://farm.tscn");
	elif SaveFiles.current == "user://save_4.save":
		get_tree().change_scene("res://farm.tscn");
	elif SaveFiles.current == "user://save_5.save":
		get_tree().change_scene("res://farm.tscn");
	else:
		get_tree().paused = true
		visible = true


func _on_close_pressed():
		get_tree().paused = false
		visible = false
