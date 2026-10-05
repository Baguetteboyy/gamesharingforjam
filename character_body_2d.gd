extends CharacterBody2D

const speed = 40
var health = 100

@export var player: Node2D
@onready var nav_agent := $NavigationAgent2D as NavigationAgent2D

func _physics_process(delta: float) -> void:
	var dir = to_local(nav_agent.get_next_path_position()).normalized()
	velocity =  dir * speed
	if(player.position.x - position.x) < 0:
		$AnimatedSprite2D.flip_h = false
	else:
		$AnimatedSprite2D.flip_h = true
	move_and_slide()
	
func makepath() -> void:
	nav_agent.target_position = player.global_position

func _on_timer_timeout() -> void:
	makepath()

var enemyattack = false

func _on_area_2d_body_entered(body: Node2D) -> void:
	enemyattack = true

func _on_area_2d_body_exited(body: Node2D) -> void:
	enemyattack = false

func _on_timer_2_timeout() -> void:
	if health >= 1:
		health = health - 20
		print(health)
	else:
		health = 0
		playerscript.level = playerscript.level +1
