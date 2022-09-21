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
	names.current = $TextEdit.text
	SaveFiles.save_names()
	get_tree().change_scene("res://farm.tscn");
