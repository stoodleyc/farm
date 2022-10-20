extends KinematicBody2D

onready var hello = $talk/Label
var area

#variables for movement
var velocity = Vector2.ZERO
export (int) var walk = 5




func _on_save_pressed():
	SaveFiles.game_data.area = area
	SaveFiles.game_data.playerx = self.position.x
	SaveFiles.game_data.playery = self.position.y
	SaveFiles.save_data()

func _on_save_and_quit_pressed():
	SaveFiles.game_data.playerx = self.position.x
	SaveFiles.game_data.playery = self.position.y
	SaveFiles.save_data()
	get_tree().paused = false
	get_tree().change_scene("res://main menu.tscn");




func _physics_process(delta):
	
	#vertical movement
	if Input.is_action_pressed("move up"):
		velocity.y = -walk
	elif Input.is_action_pressed("move down"):
		velocity.y = walk
	else:
		velocity.y = 0
	
	
	#horisontal movement
	if Input.is_action_pressed("move left"):
		velocity.x = -walk
	elif Input.is_action_pressed("move right"):
		velocity.x = walk
	else:
		velocity.x = 0
	
	#talk
		if Input.is_action_pressed("ui_accept"):
			$talk.visible = true
			var t = Timer.new()
			t.set_wait_time(2)
			t.set_one_shot(true)
			self.add_child(t)
			t.start()
			yield(t, "timeout")
			$talk.visible = false
	
	
	move_and_collide(velocity)
