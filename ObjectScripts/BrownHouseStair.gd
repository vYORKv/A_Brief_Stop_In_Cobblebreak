extends KinematicBody2D

func _ready():
	pass
	
func _on_BrownStairInter_area_entered(_area):
	SFXPlayer.stairs()
	PlayerVariables.player_position = Vector2(48, 0)
	get_tree().change_scene("res://Interiors/BrownBase.tscn")
