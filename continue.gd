extends PopupPanel


var currentlist = ["user://save_1.save","user://save_2.save","user://save_3.save","user://save_4.save","user://save_5.save"]
#this checks if the 'current' variable, which is stores the last used save game, 
#is in the list of valid save states above. if so then the it calls the 'load_data'
#function which loads the data from the previous save game and changes the scene to
#'farm' which is the default game scene. if it is not in the list there is likely no
#save game so it opens an error tab  
func _on_continue_pressed():
	if SaveFiles.current in currentlist:
		SaveFiles.load_data()
		get_tree().change_scene("res://farm.tscn");
	else:
		get_tree().paused = true
		visible = true


#this ends program when close pressed
func _on_close_pressed():
		get_tree().paused = false
		visible = false
