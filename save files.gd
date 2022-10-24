extends Node


var enter

#where these thing will be saved
const nameplace = "user://names.save"
const save_continue = "user://continue.save"
#this is kept blank by default
var current = "0"


#this will store various data within the game
var game_data = {
}

#this stores the names of each save
var names = {
}

func _ready():
	load_names()
	load_current()



#saves game_data in a text decument
func save_data():
	var file = File.new()
	file.open(current,File.WRITE)
	file.store_var(game_data)
	file.close()

#loads game_data if it can't find it then it creates a text document with
#the default variables
func load_data():
	var file = File.new()
	if not file.file_exists(current):
		game_data = {
			"player_name": "farmer",
			"playerx": 100,
			"playery": 100,
			"area": "farm",
		}
		save_data()
	file.open(current, File.READ)
	game_data = file.get_var()
	file.close()





#this saves the 'current' variable in a text document
func save_current():
	var file = File.new()
	file.open(save_continue,File.WRITE)
	file.store_var(current)
	file.close()

#this loads the 'current' varaible from it's text document if there
#is no text document it creates a new one
func load_current():
	var file = File.new()
	if not file.file_exists(save_continue):
		current = "0"
		save_current()
	file.open(save_continue, File.READ)
	current = file.get_var()
	file.close()


#Saves the names variable in a text document
func save_names():
	var file = File.new()
	file.open(nameplace,File.WRITE)
	file.store_var(names)
	file.close()
#this loads the 'names' varaible from it's text document if there
#is no text document it creates a new one
func load_names():
	var file = File.new()
	if not file.file_exists(nameplace):
		names = {
			"1" : "slot 1",
			"2" : "slot 2",
			"3" : "slot 3",
			"4" : "slot 4",
			"5" : "slot 5",
		}
		save_names()
	file.open(nameplace, File.READ)
	names = file.get_var()
	file.close()
