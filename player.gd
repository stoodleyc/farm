extends KinematicBody2D

onready var hello = $talk/Label
var area

#variables for movement
var velocity = Vector2.ZERO
export (int) var walk = 5



#when the save button is pressed it sets the game_data variables to the
#current variables the runs the save function
func _on_save_pressed():
	SaveFiles.game_data.area = area
	SaveFiles.game_data.playerx = self.position.x
	SaveFiles.game_data.playery = self.position.y
	SaveFiles.save_data()

#when the save and quit button is pressed it does the same thing as the save 
#button but unpauses the game and changes scene to main menu after
func _on_save_and_quit_pressed():
	SaveFiles.game_data.area = area
	SaveFiles.game_data.playerx = self.position.x
	SaveFiles.game_data.playery = self.position.y
	SaveFiles.save_data()
	get_tree().paused = false
	get_tree().change_scene("res://main menu.tscn");



#code repetedly runs
func _physics_process(delta):
	
	#When the move up keys are pressed it sets the y velocity to -walk which is 
	#-5. when the move down keys are pressed it sets the y velocity to walk 
	#which is 5. if neither are pressed  it sets the y velocity to 0
	if Input.is_action_pressed("move up"):
		velocity.y = -walk
	elif Input.is_action_pressed("move down"):
		velocity.y = walk
	else:
		velocity.y = 0
	
	
	#When the move left keys are pressed it sets the x velocity to -walk which 
	#is -5. when the move right keys are pressed it sets the x velocity to walk 
	#which is 5. if neither are pressed  it sets the x velocity to 0
	if Input.is_action_pressed("move left"):
		velocity.x = -walk
	elif Input.is_action_pressed("move right"):
		velocity.x = walk
	else:
		velocity.x = 0
	
	
	move_and_collide(velocity)
