extends KinematicBody2D

func _ready():
	pass
	
func trigger():
	$Dialogue0.visible = false
	$Dialogue1.visible = false
	$Dialogue2.visible = false
	if PlayerVariables.necro_spoken >= 3:
		PlayerVariables.cleared_crypt = true
		SFXPlayer.necro_tele()
		MusicPlayer.play_crypt()
		self.queue_free()

func _on_NecroInter_area_entered(_area):
	PlayerVariables.necro_spoken += 1
	if PlayerVariables.necro_spoken == 1:
		$DialoguePing.play()
		$Dialogue0.visible = true
	elif PlayerVariables.necro_spoken == 2:
		$Dialogue1.visible = true
		$DialoguePing.play()
	else:
		$Dialogue2.visible = true
		$DialoguePing.play()

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

func _on_Trigger6_area_entered(_area):
	trigger()

func _on_Trigger7_area_entered(_area):
	trigger()

func _on_Trigger8_area_entered(_area):
	trigger()

func _on_Trigger9_area_entered(_area):
	trigger()

func _on_Trigger10_area_entered(_area):
	trigger()
