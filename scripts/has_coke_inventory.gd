extends CanvasLayer

@onready var coke = $Sprite2D
@onready var frame = $Sprite2D2
func _ready():
	coke.hide()
	frame.hide()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Global.has_coke == true:
		coke.show()
		frame.show()
	else: 
		coke.hide()
