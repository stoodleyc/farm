extends Control



# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_done_pressed():
	SaveFiles.save_current()
	SaveFiles.game_data ={
		"player_name": $TextEdit.text,
		"playerx": 100,
		"playery": 100,
		"area": "farm",
	}
	SaveFiles.save_data()
	get_tree().change_scene("res://farm.tscn");
