extends PopupPanel


var currentlist = ["user://save_1.save","user://save_2.save","user://save_3.save","user://save_4.save","user://save_5.save"]

func _on_continue_pressed():
	if SaveFiles.current in currentlist:
		SaveFiles.load_data()
		get_tree().change_scene("res://farm.tscn");
	else:
		get_tree().paused = true
		visible = true


func _on_close_pressed():
		get_tree().paused = false
		visible = false
