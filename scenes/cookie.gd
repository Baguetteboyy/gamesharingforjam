extends Node2D


@onready var Interaction_area: InteractionArea = $InteractionArea
@onready var cookie = $AnimatedSprite2D
@onready var hey


func _ready() -> void:
	Interaction_area.interact = Callable(self, "on_interact")
	
func on_interact():
	print("you got the cookie!")
