extends RigidBody2D

const Colors = preload("res://scripts/Colors.gd")
onready var colors = Colors.new()

export var jump_force = 150
export var gravity = 400

var current_color

func _ready():
	set_process_input(true)
	set_applied_force(Vector2(0, gravity))
	self.set_mode(1)
	current_color = colors.getRandomColor()
	get_node("Sprite").set_modulate(current_color.color)

func _input(event):
	var jump = Input.is_action_pressed("ui_jump")
	
	if(jump):
		self.set_mode(2)
		set_axis_velocity(Vector2(0, -jump_force))

func _on_collision( body ):
	if(body.get("Name") == "ColorSwitch"):
		current_color = body.current_color
		get_node("Sprite").set_modulate(current_color.color)
		body.queue_free()
	elif(current_color.name != body.get("Name")):
		Global.setScene("res://scenes/Game.tscn")
