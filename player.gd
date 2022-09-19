extends KinematicBody2D

onready var hello = $talk/Label
onready var game_data = SaveFiles.game_data


#variables for movement
var velocity = Vector2.ZERO
export (int) var walk = 2.5


func _ready():
	hello.text = "hello my name is %s." %[game_data.player_name]


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
	
	
	#talk
		if Input.is_action_pressed("ui_accept"):
			$talk.visible = true
			var t = Timer.new()
			t.set_wait_time(3)
			t.set_one_shot(true)
			self.add_child(t)
			t.start()
			yield(t, "timeout")
			$talk.visible = false
	
	
	move_and_collide(velocity)
