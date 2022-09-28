extends Control

var bad_names = ["slot 1","slot 2","slot 3","slot 4","slot 5"]
onready var current = SaveFiles.current


func _on_done_pressed():
	if $TextEdit.text in bad_names:
		$"bad name error".visible = true
	else:
		SaveFiles.save_current()
		SaveFiles.game_data ={
			"player_name": $TextEdit.text,
			"playerx": 100,
			"playery": 100,
			"area": "farm",
		}
		SaveFiles.save_data() 
		
		
		if current == "user://save_1.save":
			SaveFiles.names["1"] = $TextEdit.text
		elif current == "user://save_2.save":
			SaveFiles.names["2"] = $TextEdit.text
		elif current == "user://save_3.save":
			SaveFiles.names["3"] = $TextEdit.text
		elif current == "user://save_4.save":
			SaveFiles.names["4"] = $TextEdit.text
		elif current == "user://save_5.save":
			SaveFiles.names["5"] = $TextEdit.text
			SaveFiles.save_names()
		
		get_tree().change_scene("res://farm.tscn");



func _on_close_pressed():
	$"bad name error".visible = false
