extends CharacterBody2D

const SPEED = 50.0

var target = null


@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D

func _physics_process(delta: float) -> void:
	if target:
		_attack(delta)
	else:
		
		animated_sprite.play("Idle")

func _attack(delta: float) -> void:
	var direction = (target.position - position).normalized()
	position += direction * SPEED * delta
	
	
	update_animation(direction)


func update_animation(direction: Vector2) -> void:
	
	if abs(direction.x) > abs(direction.y):
		if direction.x > 0:
			animated_sprite.play("walk_right")
			animated_sprite.flip_h = false
		else:
			
			animated_sprite.play("walk_right")
			animated_sprite.flip_h = true
	else:
		
		animated_sprite.flip_h = false 
		if direction.y > 0:
			animated_sprite.play("walk_down")
		else:
			animated_sprite.play("walk_up")

func _on_zone_body_entered(body: Node2D) -> void:
	if body.name == "adventure guy":
		target = body
