extends CanvasLayer

@onready var coke = $coke
@onready var frame = $frame1
@onready var coke_amount: Label = $coke_amount

func _ready():
	coke.hide()
	frame.hide()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Global.has_coke == true:
		coke.show()
		frame.show()
		coke_amount.text = str(int(Global.how_much_coke))
	
	else: 
		coke.hide()
