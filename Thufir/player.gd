extends CharacterBody2D

const SPEED = 300.0

func _physics_process(delta):
	var input_vector = Vector2.ZERO

	# Horizontal movement
	input_vector.x = Input.get_axis("ui_left", "ui_right")
	# Vertical movement
	input_vector.y = Input.get_axis("ui_up", "ui_down")

	# Normalize to prevent faster diagonal movement
	input_vector = input_vector.normalized()

	velocity = input_vector * SPEED

	move_and_slide()
