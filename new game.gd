extends PopupPanel


func _on_new_game_pressed():
	visible = true


func _on_close_pressed():
	visible = false





func _on_save_1_pressed():
	SaveFiles.current = "user://save_1.save"
	SaveFiles.save_current()


func _on_save_2_pressed():
	SaveFiles.current = "user://save_2.save"
	SaveFiles.save_current()


func _on_save_3_pressed():
	SaveFiles.current = "user://save_3.save"
	SaveFiles.save_current()


func _on_save_4_pressed():
	SaveFiles.current = "user://save_4.save"
	SaveFiles.save_current()


func _on_save_5_pressed():
	SaveFiles.current = "user://save_5.save"
	SaveFiles.save_current()
