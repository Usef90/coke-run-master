extends Area2D

@export var sprite: Node2D 

func _ready():
	sprite.hide()



func _on_area_entered(area):
	sprite.show()
 



func _on_area_exited(area):
	sprite.hide()
