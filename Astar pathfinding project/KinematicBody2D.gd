extends KinematicBody2D
var direction 
var directionY
var velocity = Vector2()
var speed = 200
var speedY = 6
onready var Spaceship = get_parent().get_node("Spaceship")
func _ready():
	pass # Replace with function body.


func _process(_delta):
	
	direction = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	directionY = Input.get_action_strength("ui_up") - Input.get_action_strength("ui_down")
	velocity.y -= directionY*speedY
	velocity.x = direction*speed 

	velocity = move_and_slide(velocity, Vector2.UP)
	
	get_parent().get_node("Character").chase()
	if Input.is_action_pressed("ui_right"):
		get_parent().get_node("Spaceship/space2").flip_h = false
	if Input.is_action_pressed("ui_left"):
		get_parent().get_node("Spaceship/space2").flip_h = true

