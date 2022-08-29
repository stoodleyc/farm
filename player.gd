extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

#variables for movement
var velocity = Vector2.ZERO
export (int) var fast = 5
export (int) var speed = 2.5

func _physics_process(delta):
	if Input.is_action_pressed("move up"):
		print("up")
	
	if Input.is_action_pressed("move left"):
		print("left")
	
	
