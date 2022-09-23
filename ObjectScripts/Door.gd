extends KinematicBody2D


func _ready():
	pass
	
func _on_DoorInter_area_entered(_area):
	SFXPlayer.doors()
	PlayerVariables.player_position = Vector2(240, 288)
	get_tree().change_scene("res://World.tscn")
