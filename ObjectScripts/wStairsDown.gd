extends KinematicBody2D

func _ready():
	pass

func _on_wStairsDownInter_area_entered(_area):
	SFXPlayer.stairs()
	PlayerVariables.player_position = Vector2(48, -160)
	get_tree().change_scene("res://Interiors/WhiteHouse.tscn")
