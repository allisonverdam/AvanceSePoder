extends RigidBody2D

var Name = "ColorSwitch"

const Colors = preload("res://scripts/Colors.gd")
onready var colors = Colors.new()

var current_color

func _ready():
	current_color = colors.getRandomColor()
	get_node("Sprite").set_modulate(current_color.color)
