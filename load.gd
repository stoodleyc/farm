extends PopupPanel


onready var names = SaveFiles.names

func _on_load_game_pressed():
	SaveFiles.load_names()
	$"VBoxContainer/save 1".text = names["1"]
	$"VBoxContainer/save 2".text = names["2"]
	$"VBoxContainer/save 3".text = names["3"]
	$"VBoxContainer/save 4".text = names["4"]
	$"VBoxContainer/save 5".text = names["5"]
	visible = true


func _on_close_pressed():
	visible = false

func _on_close_warning_pressed():
	$"empty slot".visible = false


func _on_save_1_pressed():
	if $"VBoxContainer/save 1".text == "slot 1":
		$"empty slot".visible = true
	else:
		SaveFiles.current = "user://save_1.save"
		SaveFiles.save_current()
		get_tree().change_scene("res://farm.tscn")


func _on_save_2_pressed():
	if $"VBoxContainer/save 2".text == "slot 2":
		$"empty slot".visible = true
	else:
		SaveFiles.current = "user://save_2.save"
		SaveFiles.save_current()
		get_tree().change_scene("res://farm.tscn")

func _on_save_3_pressed():
	if $"VBoxContainer/save 3".text == "slot 3":
		$"empty slot".visible = true
	else:
		SaveFiles.current = "user://save_3.save"
		SaveFiles.save_current()
		get_tree().change_scene("res://farm.tscn")

func _on_save_4_pressed():
	if $"VBoxContainer/save 4".text == "slot 4":
		$"empty slot".visible = true
	else:
		SaveFiles.current = "user://save_4.save"
		SaveFiles.save_current()
		get_tree().change_scene("res://farm.tscn")

func _on_save_5_pressed():
	if $"VBoxContainer/save 5".text == "slot 5":
		$"empty slot".visible = true
	else:
		SaveFiles.current = "user://save_5.save"
		SaveFiles.save_current()
		get_tree().change_scene("res://farm.tscn")


