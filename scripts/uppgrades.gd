extends Control

 
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	$Label.text = str(playerscript.SPEED)
	



func _on_speed_pressed() -> void:
	if playerscript.level == 2:
		playerscript.SPEED = playerscript.SPEED + 20
		get_tree().change_scene_to_file("res://scenes/interactions/levels/level2.tscn")
		print("level2")
	elif playerscript.level == 3:
		print("level3")
