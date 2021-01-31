extends KinematicBody2D

export (int) var speed = 200

var velocity = Vector2()

func get_input():
    velocity = Vector2()
    if Input.is_action_pressed('ui-right'):
        velocity.x += 400
    if Input.is_action_pressed('ui-left'):
        velocity.x -= 400
    if Input.is_action_pressed('ui-down'):
        velocity.y += 400
    if Input.is_action_pressed('ui-up'):
        velocity.y -= 400
    velocity = velocity.normalized() * speed

func _physics_process(delta):
    get_input()
    velocity = move_and_slide(velocity)