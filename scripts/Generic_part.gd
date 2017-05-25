extends Node

const Colors = preload("res://scripts/Colors.gd")
onready var colors = Colors.new()

export var Name = ""

func _ready():
	get_node("Sprite").set_modulate(colors.getColor(Name).color)
