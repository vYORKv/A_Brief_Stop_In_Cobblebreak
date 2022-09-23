extends KinematicBody2D

func _ready():
	pass

func _on_BBStairInter_area_entered(_area):
	SFXPlayer.stairs()
	PlayerVariables.player_position = Vector2(144, -96)
	get_tree().change_scene("res://Interiors/BrownHouse.tscn")
