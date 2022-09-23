extends KinematicBody2D

func _ready():
	pass

func trigger():
	$Dialogue0.visible = false

func _on_GraveStoneInter_area_entered(_area):
	if PlayerVariables.has_rope == true:
		PlayerVariables.player_position = Vector2(0, 0)
		get_tree().change_scene("res://Interiors/Catacombs.tscn")
		MusicPlayer.play_crypt()
	else:
		$Dialogue0.visible = true

func _on_Trigger1_area_entered(_area):
	trigger()

func _on_Trigger2_area_entered(_area):
	trigger()

func _on_Trigger3_area_entered(_area):
	trigger()

func _on_Trigger4_area_entered(_area):
	trigger()

func _on_Trigger5_area_entered(_area):
	trigger()
