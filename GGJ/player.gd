extends KinematicBody2D

var motion = Vector2()

func _physics_process(delta):
	if Input.is_action_pressed("ui_right"):
		motion.x = 4
		get_node("AnimatedSprite").set_flip_h( false )
	elif Input.is_action_pressed("ui_left"):
		motion.x = -4
		get_node("AnimatedSprite").set_flip_h( true )
	elif Input.is_action_pressed("ui_up"):
		motion.y = -4
	elif Input.is_action_pressed("ui_down"):
		motion.y = 4
	else:
		motion.x = 0
		motion.y = 0
		get_node("AnimatedSprite")
		
	move_and_collide(motion)
