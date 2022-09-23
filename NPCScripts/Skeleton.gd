extends KinematicBody2D

func _ready():
	pass

func _on_SkeletonInter_area_entered(_area):
	if PlayerVariables.has_sword == true:
		SFXPlayer.skele()
		PlayerVariables.killed_skeleton = true
		self.queue_free()

func _on_Kill_area_entered(_area):
	if PlayerVariables.has_sword == false:
		MusicPlayer.stop_music()
		get_tree().change_scene("res://GODeath.tscn")
		

