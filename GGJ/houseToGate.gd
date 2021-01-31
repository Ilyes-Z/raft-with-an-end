extends Area2D

var can_interact

func _on_Area2D2_body_entered(body):
	if body.name == "Player":
		$Label.show()
		$Label.text = "Interact 'e'"
		can_interact = true


func _on_Area2D2_body_exited(body):
	if body.name == "Player":
		$Label.hide()
		can_interact = false

func zbeul(event):
	if can_interact == true and Input.is_action_just_pressed("interact"):
		get_tree().change_scene("res://Stage1.tscn")
