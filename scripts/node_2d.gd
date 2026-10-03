extends CharacterBody2D

var SPEED = 70
var level = 1

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
		$AnimatedSprite2D.play("Walk")
	elif Input.is_action_pressed("ned"):
		velocity.x = 0
		velocity.y = SPEED
		$AnimatedSprite2D.play("Walk")
	elif Input.is_action_pressed("høyre"):
		velocity.x = SPEED
		velocity.y = 0
		$AnimatedSprite2D.flip_h = false
		$AnimatedSprite2D.play("Walk")
	elif Input.is_action_pressed("venstre"):
		velocity.x = -SPEED
		velocity.y = 0
		$AnimatedSprite2D.flip_h = true
		$AnimatedSprite2D.play("Walk")
	elif Input.is_action_pressed("ta"):
		$AnimatedSprite2D.play("grab")
	else:
		velocity.x = 0
		velocity.y = 0
		$AnimatedSprite2D.play("idle")
	move_and_slide()
