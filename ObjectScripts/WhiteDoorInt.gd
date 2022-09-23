extends KinematicBody2D

func _ready():
	pass

func _on_DoorInter_area_entered(_area):
	if PlayerVariables.mayor_spoken == 0 and PlayerVariables.has_reward == true:
		get_tree().change_scene("res://BadEnd.tscn")
		MusicPlayer.stop_music()
	elif PlayerVariables.mayor_spoken == 1 and PlayerVariables.has_reward == true:
		get_tree().change_scene("res://MehEnd.tscn")
		MusicPlayer.stop_music()
	elif PlayerVariables.mayor_spoken >= 2 and PlayerVariables.has_reward == true:
		get_tree().change_scene("res://GoodEnd.tscn")
		MusicPlayer.stop_music()
	else:
		SFXPlayer.doors()
		PlayerVariables.player_position = Vector2(96, 304)
		get_tree().change_scene("res://World.tscn")
