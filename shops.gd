extends Node2D

#the variables shorten are just here to make the code more readable 
onready var data = SaveFiles.game_data
onready var player = $player

#this checks if the player is entering from the menu or from another scene
#using the enter variable which stores the last entered area if the enter
#variable is farm then it sets the player position to the entrance position
# and sets the enter variable to shop, if not then it sets the player position
#to the saved position and sets enter to the current area
func _ready():
	SaveFiles.game_data.area = "shop"
	if SaveFiles.enter == "farm":
		player.position = Vector2 (70,300)
		SaveFiles.enter = "shop"
	else:
		player.position.x = data.playerx
		player.position.y = data.playery
		SaveFiles.enter = "shop"

func _on_load_pressed():
	SaveFiles.enter = "0"
	if data.area == "farm":
		get_tree().change_scene("res://farm.tscn")
	else:
		get_tree().change_scene("res://shops.tscn")


func _on_farmenter_body_entered(body):
	get_tree().change_scene("res://farm.tscn")
