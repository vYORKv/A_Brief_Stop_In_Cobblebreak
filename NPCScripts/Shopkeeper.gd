extends KinematicBody2D

func _ready():
	pass

func trigger():
	$Dialogue0.visible = false
	$Dialogue1.visible = false
	$Dialogue2.visible = false
	$Dialogue3.visible = false
	$Dialogue4.visible = false

func _on_ShopkeeperInter_area_entered(_area):
	PlayerVariables.shop_spoken += 1
	if PlayerVariables.has_rope == true and PlayerVariables.shop_spoken > 2:
		$Dialogue4.visible = true
		$DialoguePing.play()
	if PlayerVariables.has_rope == true and PlayerVariables.shop_spoken >= 1:
		$Dialogue3.visible = true
		$DialoguePing.play()
	if PlayerVariables.shop_spoken == 1:
		$Dialogue0.visible = true
		$DialoguePing.play()
	elif PlayerVariables.shop_spoken == 2:
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
