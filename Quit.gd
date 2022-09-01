extends PopupPanel




# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _process(delta):
	if Input.is_action_just_released("pause"):
		visible = false


func _on_quit_without_saving_pressed():
	visible = true


func _on_quit_pressed():
	get_tree().quit()


func _on_dont_quit_pressed():
	visible = false
