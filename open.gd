extends Control

# Called when the node enters the scene tree for the first time.
func _ready():
	SaveFiles.load_names()
	print (SaveFiles.names)


