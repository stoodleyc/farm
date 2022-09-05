extends Node


const SAVE_1 = "user://save_1.save" 
const SAVE_2 = "user://save_2.save" 
const SAVE_3 = "user://save_3.save" 
const SAVE_4 = "user://save_4.save" 
const SAVE_5 = "user://save_5.save" 

var game_data = {}


func _ready():
	pass



func save_data():
	var file = File.new
	file.open(SAVE_1,File.WRITE)
	file.store_var(game_data)
	file.close

func load_data():
	pass
