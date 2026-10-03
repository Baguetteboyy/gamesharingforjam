extends Node2D

var level = 1

@onready var Interaction_area: InteractionArea = $InteractionArea
@onready var cookie = $AnimatedSprite2D
@onready var hey


func _ready() -> void:
	Interaction_area.interact = Callable(self, "on_interact")
	
func on_interact():
	get_tree().change_scene_to_file("res://scenes/uppgrades.tscn")
	level = level + 1
