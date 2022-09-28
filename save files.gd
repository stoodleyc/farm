extends Node

var current = "0"

var enter

const nameplace = "user://names.save"
const save_continue = "user://continue.save"


var game_data = {
}

var names = {
}

func _ready():
	load_names()
	load_current()



#save game
func save_data():
	var file = File.new()
	file.open(current,File.WRITE)
	file.store_var(game_data)
	file.close()

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





#for continue button only
func save_current():
	var file = File.new()
	file.open(save_continue,File.WRITE)
	file.store_var(current)
	file.close()

func load_current():
	var file = File.new()
	if not file.file_exists(save_continue):
		current = "0"
		save_current()
	file.open(save_continue, File.READ)
	current = file.get_var()
	file.close()


#for load names
func save_names():
	var file = File.new()
	file.open(nameplace,File.WRITE)
	file.store_var(names)
	file.close()

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
