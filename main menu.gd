extends Control



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
		print("oh fuck")




func _on_quit_pressed():
	get_tree().quit()



func _on_Button_pressed():
	print(SaveFiles.current)
