extends KinematicBody2D

var motion = Vector2()

func _physics_process(delta):
	motion.x = 0
	if Input.is_action_pressed("ui_left"):
		motion.x -= 600
		get_node("AnimatedSprite").set_flip_h( true )
	if Input.is_action_pressed("ui_right"):
		motion.x += 600
		get_node("AnimatedSprite").set_flip_h( false )
	if Input.is_action_just_pressed("jump") && is_on_floor():
		motion.y -= 1200
	if motion.x != 0:
		$AnimatedSprite.play()
	else:
		$AnimatedSprite.stop()
	motion.y += 2400 * delta
	motion = move_and_slide(motion, Vector2(0, -2))
