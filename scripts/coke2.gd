extends Area2D

@export var sprite: Node2D

var player_in_area = false
# Called when the node enters the scene tree for the first time.
func _ready():
	player_in_area = false




# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if player_in_area and Global.cash > 3 and Input.is_action_just_pressed("e_pressed"):
		sprite.hide()
		Global.has_coke = true
		Global.how_much_coke = +1
		Global.cash = -(int(Global.coke_cost))
		










func _on_area_entered(area):
	player_in_area = true


func _on_area_exited(area):
	player_in_area = false
