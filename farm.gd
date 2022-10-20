extends Node2D

#the variables shorten are just here to make the code more readable 
onready var player = $player

onready var data = SaveFiles.game_data


#this checks if the player is entering from the menu or from another scene
#using the enter variable wich stores the last entered area if the enter
#variable is shop then it sets the player position to the entrance position
# and sets the enter variable to farm, if not then it sets the player position
#to the saved position and sets enter to the current area
func _ready():
	player.area = "farm"
	if SaveFiles.enter == "shop":
		player.position = Vector2 (967,257)
		SaveFiles.enter = "farm"
	else:
		player.position.x = data.playerx
		player.position.y = data.playery
		SaveFiles.enter = "farm"

#sets any data to the currently saved data when load is pressed 
func _on_load_pressed():
	SaveFiles.enter = "0"
	if data.area == "shop":
		get_tree().change_scene("res://shops.tscn")
	else:
		get_tree().change_scene("res://farm.tscn")




func _on_shopenter_body_entered(body):
	get_tree().change_scene("res://shops.tscn")
