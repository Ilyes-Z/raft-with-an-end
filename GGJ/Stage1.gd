extends Node2D

func _ready():
	$TileMap/ExitStage1.connect("boby_entered", self, "_change_scene_from_stage_1")

func _change_scene_from_stage_1():
	print("test")
