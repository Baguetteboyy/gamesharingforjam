extends CharacterBody2D

var SPEED = 300

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	player_movement()


func player_movement():
	if Input.is_action_pressed("opp"):
		velocity.x = 0
		velocity.y = -SPEED
	elif Input.is_action_pressed("ned"):
		velocity.x = 0
		velocity.y = SPEED
	elif Input.is_action_pressed("høyre"):
		velocity.x = SPEED
		velocity.y = 0
	elif Input.is_action_pressed("venstre"):
		velocity.x = -SPEED
		velocity.y = 0
	else:
		velocity.x = 0
		velocity.y = 0
	move_and_slide()
