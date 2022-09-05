extends KinematicBody2D


#variables for movement
var velocity = Vector2.ZERO
export (int) var walk = 2.5



func _physics_process(delta):
	
	#vertical movement
	if Input.is_action_pressed("move up"):
		print("up")
		velocity.y = -walk
	elif Input.is_action_pressed("move down"):
		print("down")
		velocity.y = walk
	else:
		velocity.y = 0
	
	
	#horisontal movement
	if Input.is_action_pressed("move left"):
		print("left")
		velocity.x = -walk
	elif Input.is_action_pressed("move right"):
		print("right")
		velocity.x = walk
	else:
		velocity.x = 0
	
	
	
	
	move_and_collide(velocity)
