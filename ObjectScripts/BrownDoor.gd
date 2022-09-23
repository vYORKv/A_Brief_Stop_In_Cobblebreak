extends KinematicBody2D

func _ready():
	pass

func _on_BrownDoorInter_area_entered(_area):
	SFXPlayer.doors()
	PlayerVariables.player_position = Vector2(0, 0)
	get_tree().change_scene("res://Interiors/BrownHouse.tscn")
