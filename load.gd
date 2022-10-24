extends PopupPanel
#the variables shortened are just here to make the code more readable 
onready var data = SaveFiles.game_data
onready var names = SaveFiles.names

#when the load game button is pressed it loads the names of the saves from a 
#text document then sets the as the text for each button on the popup. then 
#opens the popup
func _on_load_game_pressed():
	SaveFiles.load_names()
	$"VBoxContainer/save 1".text = names["1"]
	$"VBoxContainer/save 2".text = names["2"]
	$"VBoxContainer/save 3".text = names["3"]
	$"VBoxContainer/save 4".text = names["4"]
	$"VBoxContainer/save 5".text = names["5"]
	visible = true

#closes popup when close button is pressed
func _on_close_pressed():
	visible = false
#closes empty slot popup when close warning button is pressed
func _on_close_warning_pressed():
	$"empty slot".visible = false

#all of these check if the name for the save they are trying to load is the 
#default name it is the default name then there is no save for the slot so
#it opens the empty slot popup. if it isn't then it sets the current variable 
#the relevant location and saves it to a text document the it loads the 
#game data checks which scene it's supposed to load and loads it.
func _on_save_1_pressed():
	if $"VBoxContainer/save 1".text == "slot 1":
		$"empty slot".visible = true
	else:
		SaveFiles.current = "user://save_1.save"
		SaveFiles.save_current()
		SaveFiles.load_data()
		if  data.area == "farm":
			get_tree().change_scene("res://farm.tscn")
		else:
			get_tree().change_scene("res://shops.tscn")

func _on_save_2_pressed():
	if $"VBoxContainer/save 2".text == "slot 2":
		$"empty slot".visible = true
	else:
		SaveFiles.current = "user://save_2.save"
		SaveFiles.save_current()
		SaveFiles.load_data()
		if  data.area == "farm":
			get_tree().change_scene("res://farm.tscn")
		else:
			get_tree().change_scene("res://shops.tscn")

func _on_save_3_pressed():
	if $"VBoxContainer/save 3".text == "slot 3":
		$"empty slot".visible = true
	else:
		SaveFiles.current = "user://save_3.save"
		SaveFiles.save_current()
		SaveFiles.load_data()
		if  data.area == "farm":
			get_tree().change_scene("res://farm.tscn")
		else:
			get_tree().change_scene("res://shops.tscn")

func _on_save_4_pressed():
	if $"VBoxContainer/save 4".text == "slot 4":
		$"empty slot".visible = true
	else:
		SaveFiles.current = "user://save_4.save"
		SaveFiles.save_current()
		SaveFiles.load_data()
		if  data.area == "farm":
			get_tree().change_scene("res://farm.tscn")
		else:
			get_tree().change_scene("res://shops.tscn")

func _on_save_5_pressed():
	if $"VBoxContainer/save 5".text == "slot 5":
		$"empty slot".visible = true
	else:
		SaveFiles.current = "user://save_5.save"
		SaveFiles.save_current()
		SaveFiles.load_data()
		if  data.area == "farm":
			get_tree().change_scene("res://farm.tscn")
		else:
			get_tree().change_scene("res://shops.tscn")


