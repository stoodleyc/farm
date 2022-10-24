extends PopupPanel
#the variables shortened are just here to make the code more readable 
onready var data = SaveFiles.game_data
#list of valid current variables
var currentlist = ["user://save_1.save","user://save_2.save","user://save_3.save","user://save_4.save","user://save_5.save"]


#checks if the current variable is in the list of valid currents if so 
#it loads game_data and checks which scene it needs to load then loads it.
#if it isn't inthe list it pauses and opens a popup telling the user the load
#failed
func _on_continue_pressed():
	if SaveFiles.current in currentlist:
		SaveFiles.load_data()
		if SaveFiles.game_data.area == "farm":
			get_tree().change_scene("res://farm.tscn");
		else:
			get_tree().change_scene("res://shops.tscn");
	else:
		get_tree().paused = true
		visible = true


#this ends program when close pressed
func _on_close_pressed():
		get_tree().paused = false
		visible = false
