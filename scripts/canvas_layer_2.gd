

extends CanvasLayer

@onready var timer_label: Label = $TimerLabel

func _process(delta: float) -> void:
	if Global.time_left > 0:
		Global.time_left -= delta
		if Global.time_left < 0:
			Global.time_left = 0
	timer_label.text = str(int(Global.time_left))
