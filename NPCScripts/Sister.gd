extends KinematicBody2D

func _ready():
	pass

func trigger():
	$Dialogue0.visible = false
	$Dialogue1.visible = false

func _on_SisterInter_area_entered(_area):
	PlayerVariables.sis_spoken += 1
	if PlayerVariables.sis_spoken == 1:
		$Dialogue0.visible = true
		$DialoguePing.play()
	else:
		$Dialogue1.visible = true
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
