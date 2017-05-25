extends Node

var viewport_scale
var viewport_res

#The currently active scene
var currentScene = null

func _ready():
	var viewport = get_node("/root").get_children()[1].get_viewport_rect().size
	viewport_res = viewport
	viewport_scale = 144/viewport.y
	
	#On load set the current scene to the last scene available
	currentScene = get_tree().get_root().get_child(get_tree().get_root().get_child_count() -1)
	
# create a function to switch between scenes 
func setScene(scene):
   #clean up the current scene
   currentScene.queue_free()
   #load the file passed in as the param "scene"
   var s = ResourceLoader.load(scene)
   #create an instance of our scene
   currentScene = s.instance()
   # add scene to root
   get_tree().get_root().add_child(currentScene)

