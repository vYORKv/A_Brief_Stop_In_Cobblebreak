extends KinematicBody2D

func _ready():
	pass

func _on_wStairsUpInter_area_entered(_area):
	SFXPlayer.stairs()
	PlayerVariables.player_position = Vector2(-16, -48)
	get_tree().change_scene("res://Interiors/WhiteUp.tscn")
