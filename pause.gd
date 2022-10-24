extends PopupPanel
#the variables shortened are just here to make the code more readable 
onready var data = SaveFiles.game_data

#constantly check for escape being pressed. when detected if the pause menu is 
#open it closes and unpauses if it isn't the menu is opened and the game is 
#paused
func _process(delta):
	if Input.is_action_just_released("pause"):
		if visible == true:
			visible = false
			get_tree().paused = false
		else:
			visible = true
			get_tree().paused = true

#when the resume button is pressed the pause menu is closed and the game is 
#unpaused
func _on_resume_pressed():
	visible = false
	get_tree().paused = false




#when the load button is pressed  it runs the load data function and sets the 
#enter variable to 0 so the game thinks he is coming from a menu. then it
#unpauses the game and loads the  last saved area.
func _on_load_pressed():
	SaveFiles.load_data()
	SaveFiles.enter = "0"
	get_tree().paused = false
	if data.area == "farm":
		get_tree().change_scene("res://farm.tscn")
	else:
		get_tree().change_scene("res://shops.tscn")
