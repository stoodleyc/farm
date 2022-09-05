extends Control



func _on_continue_pressed():
	get_tree().change_scene("res://farm.tscn");




func _on_quit_pressed():
	get_tree().quit()

