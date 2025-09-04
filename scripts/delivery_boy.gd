extends CharacterBody2D

@onready var animated_sprite = $AnimatedSprite2D

const SPEED = 300.0
const JUMP_VELOCITY = -400.0




var is_pushing = false




func _process(delta):
	if Input.is_action_just_pressed("f_pressed") and not is_pushing:
		is_pushing = true
		animated_sprite.play("push")
	elif not is_pushing:
		animated_sprite.play("idle")

func _on_animation_finished():
	if animated_sprite.animation == "push":
		is_pushing = false




func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY
		animated_sprite.play("jump")

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()


func _on_animated_sprite_2d_animation_finished():
	if animated_sprite.animation == "push":
		is_pushing = false
