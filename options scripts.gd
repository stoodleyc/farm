extends VBoxContainer


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_back_pressed():
	visible = false





func _on_fullscreen_toggled(on):
	if on:
		OS.window_fullscreen = true
	else:
			OS.window_fullscreen = false
