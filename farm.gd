extends Node2D

onready var player = $player

onready var game_data = SaveFiles.game_data

func _ready():
	SaveFiles.load_data()
	SaveFiles.save_data()
	if SaveFiles.enter == true:
		player.position.x = game_data.player_x
		SaveFiles.enter = false
	else:
		player.position = Vector2 (970,300)
