extends Area2D


var can_interact: Array[CollisionObject2D] = []
@onready var chest = $"../../Chest"

func _on_body_entered(body: Node2D) -> void:
	if body.has_method("interact"):
		print("Test 1")
		print(body)
		can_interact.push_back(body)
		print(can_interact)

func _on_body_exited(body: Node2D) -> void:
	if can_interact.has(body):
		can_interact.erase(body)


func _unhandled_key_input(event) -> void:
	if event.is_action_pressed("interact"):
		print("Test 2: key pressed")
		print (can_interact)
		for o in can_interact:
			o.interact()
