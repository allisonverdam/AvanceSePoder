extends Node2D

export var rot_speed = 70

func _ready():
	set_fixed_process(true)

func _fixed_process(delta):
	self.rotate(deg2rad(rot_speed * delta))