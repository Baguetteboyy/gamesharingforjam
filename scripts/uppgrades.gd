extends Control

 
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	$Label.text = str(playerscript.SPEED)
	



func _on_speed_pressed() -> void:
	playerscript.SPEED = playerscript.SPEED + 20
	if playerscript.level == 1:
		get_tree().change_scene_to_file("res://scenes/levels/level2.tscn")
	elif playerscript.level == 2:
		print("level3")
