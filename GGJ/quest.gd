extends Area2D

var can_interact = false
var visited

func _on_Area2D_body_entered(body):
	if body.name == "Player":
		$Label.show()
		can_interact = true

func _on_Area2D_body_exited(body):
	if body.name == "Player":
		$Label.hide()
		can_interact = false
		$Label.text = "interact 'e'"
		visited = true

func _input(event):
	if Input.is_action_just_pressed("interact") and can_interact == true:
		
		if visited == true:
			$Label.text = "go to south, you will have answer"
