extends Area2D

@export var sprite: Node2D 
@onready var coke = $coke

func _ready():
	sprite.hide()
	coke.hide()

var player_in_area = false

func _on_area_entered(area):
	player_in_area = true

func _on_area_exited(area):
	player_in_area = false
	sprite.hide()

func _process(delta):
	if player_in_area and Input.is_action_just_pressed("e_pressed"):
		sprite.show()
		Global.current_task = "Go to 7/11 and get a Coke"
		if Global.has_coke == true and Input.is_action_just_pressed("e_pressed"):
			coke.show()
			Global.has_coke = false 
  
		
		
		
		
	
