extends Area2D




@onready var sprite: Sprite2D = $Sprite2D



func _on_mouse_entered():
	sprite.modulate = Color(0.7, 0.7, 0.7)
	


func _on_mouse_exited():
	sprite.modulate = Color(1, 1, 1)
