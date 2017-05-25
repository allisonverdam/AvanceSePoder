extends Node

var colors = [
	{color = Color(0.54902,0.07451,0.984314,1), name = "Purple"},
	{color = Color(0.107843,1,0.1,1), name = "Green"},
	{color = Color(1,0,0.501961,1), name = "Magenta"},
	{color = Color(0.964706,0.87451,0.054902,1), name = "Yellow"}
]

func _ready():
	pass

func _init():
	pass

func getColors():
	return colors

func getRandomColor():
	randomize()
	var index = randi() % colors.size()
	return colors[index]

func getColor(name):
	for color in colors:
		if(color.name == name):
			return color
