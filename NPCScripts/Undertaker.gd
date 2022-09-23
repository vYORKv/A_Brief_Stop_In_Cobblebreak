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

func _on_UndertakerInter_area_entered(_area):
	PlayerVariables.grave_spoken += 1
	if PlayerVariables.has_key == true:
		$DialoguePing.play()
		$Dialogue4.visible = true
	if PlayerVariables.has_apple == true and PlayerVariables.grave_spoken <=2:
		$DialoguePing.play()
		$Dialogue5.visible = true
		PlayerVariables.has_key = true
	if PlayerVariables.has_apple == true and PlayerVariables.grave_spoken >= 3:
		$DialoguePing.play()
		$Dialogue3.visible = true
		PlayerVariables.has_key = true
	if PlayerVariables.grave_spoken == 1:
		$DialoguePing.play()
		$Dialogue0.visible = true
	if PlayerVariables.grave_spoken == 2:
		$DialoguePing.play()
		$Dialogue1.visible = true
	if PlayerVariables.grave_spoken >= 3:
		$DialoguePing.play()
		$Dialogue2.visible = true

func _on_Trigger1_area_entered(_area):
	trigger()

func _on_Trigger2_area_entered(_area):
	trigger()

func _on_Trigger3_area_entered(_area):
	trigger()

func _on_Trigger4_area_entered(_area):
	trigger()
