extends Area2D



func _on_Area2D_body_entered(body):
	if body.name == "player":
		get_tree().change_scene("res://last_screen.tscn")
