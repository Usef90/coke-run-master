extends Area2D
@onready var sprite: Sprite2D = $Sprite2D

func _on_mouse_entered():
	sprite.modulate = Color(0.5, 0.5, 0.5)
 


func _on_mouse_exited():
	sprite.modulate = Color(1, 1, 1)
