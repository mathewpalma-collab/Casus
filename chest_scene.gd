extends StaticBody2D

@onready var animations: AnimationPlayer = $AnimationPlayer

func interact() ->void:
	print("animation play")
	animations.play("Chest_animation")
