extends CharacterBody2D


const SPEED = 300.0

var target = null

func _physics_process(delta: float) -> void:
	
	move_and_slide()
	
func _attack(delta : float) -> void:
	var direction = (target.position - position).normalized()
	position += direction * speed * delta


func _on_zone_body_entered(body: Node2D) -> void:
	if body.name == "adventure_guy":
		print(hit)
		
	
