extends CanvasLayer


func _ready():
	get_node("left_inputs").set_pos(Vector2(0, get_node("/root/Global").viewport_res.y))
	get_node("left_inputs").set_scale(get_node("left_inputs").get_scale() / get_node("/root/Global").viewport_scale)
	
	get_node("right_inputs").set_pos(get_node("/root/Global").viewport_res)
	get_node("right_inputs").set_scale(get_node("right_inputs").get_scale() / get_node("/root/Global").viewport_scale)