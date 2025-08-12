extends CanvasLayer

@onready var task_label: Label = $TaskLabel

func _process(delta: float) -> void:
	# Update the label text every frame from the global variable
	task_label.text = Global.current_task
