extends Node2D

onready var player = $player

onready var data = SaveFiles.game_data



func _ready():
	if SaveFiles.enter == "shop":
		player.position = Vector2 (970,300)
		SaveFiles.enter = "farm"
	else:
				player.position.x = data.playerx
				player.position.y = data.playery
				SaveFiles.enter = data.area
