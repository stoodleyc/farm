extends Node

var current

var enter

const nameplace = "user://names.save"
const save_continue = "user://continue.save"


var game_data = {
}

var names = {
}

func _ready():
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
		save_data()
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
			"user://save_1.save" : "slot 1",
			"user://save_2.save" : "slot 2",
			"user://save_3.save" : "slot 3",
			"user://save_4.save" : "slot 4",
			"user://save_5.save" : "slot 5",
		}
		save_data()
	file.open(nameplace, File.READ)
	current = file.get_var()
	file.close()
