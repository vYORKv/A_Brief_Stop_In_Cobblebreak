extends KinematicBody2D

func _ready():
	pass

func trigger():
	$Dialogue0.visible = false
	$Dialogue1.visible = false
	$Dialogue2.visible = false
	$Dialogue3.visible = false
	$Dialogue4.visible = false
	$Dialogue5.visible = false
	$Dialogue6.visible = false

func _on_MayorInter_area_entered(_area):
	PlayerVariables.mayor_spoken += 1
	if PlayerVariables.has_reward == true:
		$Dialogue6.visible = true
		$DialoguePing.play()
	if PlayerVariables.cleared_crypt == true and PlayerVariables.mayor_spoken == 1:
		$Dialogue4.visible = true
		$DialoguePing.play()
		PlayerVariables.has_reward = true
		PlayerVariables.mayor_spoken -= 1
	if PlayerVariables.cleared_crypt == true and PlayerVariables.mayor_spoken == 2:
		$Dialogue5.visible = true
		$DialoguePing.play()
		PlayerVariables.has_reward = true
		PlayerVariables.mayor_spoken -= 1
	if PlayerVariables.cleared_crypt == true and PlayerVariables.mayor_spoken >= 3:
		$Dialogue3.visible = true
		$DialoguePing.play()
		PlayerVariables.has_reward = true
	if PlayerVariables.mayor_spoken == 1:
		$Dialogue0.visible = true
		$DialoguePing.play()
	elif PlayerVariables.mayor_spoken == 2:
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

func _on_Trigger11_area_entered(_area):
	trigger()
