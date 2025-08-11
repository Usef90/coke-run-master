extends Area2D

# Path to the target scene
@export var target_scene: String = "res://outside.tscn"








func _on_area_entered(area):
	get_tree().change_scene_to_file(target_scene)
