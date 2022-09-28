extends Control


onready var names = SaveFiles.names
onready var current = SaveFiles.current

func _on_done_pressed():
	SaveFiles.save_current()
	SaveFiles.game_data ={
		"player_name": $TextEdit.text,
		"playerx": 100,
		"playery": 100,
		"area": "farm",
	}
	SaveFiles.save_data() 
	
	SaveFiles.load_names()
	if current == "user://save_1.save":
		names["1"] = $TextEdit.text
	elif current == "user://save_2.save":
		names["2"] = $TextEdit.text
	elif current == "user://save_3.save":
		names["3"] = $TextEdit.text
	elif current == "user://save_4.save":
		names["4"] = $TextEdit.text
	elif current == "user://save_5.save":
		names["5"] = $TextEdit.text
	SaveFiles.save_names()
	
	get_tree().change_scene("res://farm.tscn");
