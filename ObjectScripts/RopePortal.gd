extends KinematicBody2D

func _ready():
	pass

func _on_RopeInter_area_entered(_area):
	PlayerVariables.player_position = Vector2(704, 80)
	get_tree().change_scene("res://World.tscn")
	MusicPlayer.play_world()
