extends KinematicBody2D

func _ready():
	pass

func _on_IntTempInter_area_entered(area):
	SFXPlayer.teleport()
	PlayerVariables.player_position = Vector2(1264, 784)
	get_tree().change_scene("res://World.tscn")
