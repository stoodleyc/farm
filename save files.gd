extends Node

var current

var enter = true

const save_continue = "user://continue.save"

var game_data = {
}


func _ready():
	load_current()
	SaveFiles.load_data()


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
