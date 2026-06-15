extends Area2D



func _on_body_entered(body: Node2D) -> void:
	if body_name == "adventure_guy":
		get_tree().change_scene_to_file("res://Temple scene/temple_scene.tscn")
		
