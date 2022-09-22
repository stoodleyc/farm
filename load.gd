extends PopupPanel


func _ready():
	SaveFiles.load_names()
	$"VBoxContainer/save 1".text = SaveFiles.names["user://save_1.save"]
	$"VBoxContainer/save 2".text = SaveFiles.names["user://save_2.save"]
	$"VBoxContainer/save 3".text = SaveFiles.names["user://save_3.save"]
	$"VBoxContainer/save 4".text = SaveFiles.names["user://save_4.save"]
	$"VBoxContainer/save 5".text = SaveFiles.names["user://save_5.save"]

func _on_load_game_pressed():
	visible = true


func _on_close_pressed():
	visible = false




func _on_save_1_pressed():
	SaveFiles.current = "user://save_1.save"
	SaveFiles.save_current()
	get_tree().change_scene("res://farm.tscn")


func _on_save_2_pressed():
	SaveFiles.current = "user://save_2.save"
	SaveFiles.save_current()
	get_tree().change_scene("res://farm.tscn")

func _on_save_3_pressed():
	SaveFiles.current = "user://save_3.save"
	SaveFiles.save_current()
	get_tree().change_scene("res://farm.tscn")

func _on_save_4_pressed():
	SaveFiles.current = "user://save_4.save"
	SaveFiles.save_current()
	get_tree().change_scene("res://farm.tscn")

func _on_save_5_pressed():
	SaveFiles.current = "user://save_5.save"
	SaveFiles.save_current()
	get_tree().change_scene("res://farm.tscn")
