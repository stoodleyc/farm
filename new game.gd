extends PopupPanel

#opens popup when new game button is pressed
func _on_new_game_pressed():
	visible = true

#closes popup when close button is pressed
func _on_close_pressed():
	visible = false




#all of the set the current variable to the relevant location then change the 
#scene to game start
func _on_save_1_pressed():
	SaveFiles.current = "user://save_1.save"
	get_tree().change_scene("res://game start.tscn")


func _on_save_2_pressed():
	SaveFiles.current = "user://save_2.save"
	get_tree().change_scene("res://game start.tscn")


func _on_save_3_pressed():
	SaveFiles.current = "user://save_3.save"
	get_tree().change_scene("res://game start.tscn")


func _on_save_4_pressed():
	SaveFiles.current = "user://save_4.save"
	get_tree().change_scene("res://game start.tscn")


func _on_save_5_pressed():
	SaveFiles.current = "user://save_5.save"
	get_tree().change_scene("res://game start.tscn")
