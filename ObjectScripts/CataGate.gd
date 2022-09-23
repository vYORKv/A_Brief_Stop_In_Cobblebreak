extends KinematicBody2D

func _ready():
	pass

func _on_CataGateInter_area_entered(_area):
	if PlayerVariables.has_key == true:
		$SFX.play()
		self.set_collision_layer(2)
		$AnimatedSprite.frame = 1
	else:
		$Dialogue0.visible = true

func _on_Trigger1_area_entered(area):
	$Dialogue0.visible = false

func _on_Trigger2_area_entered(area):
	$Dialogue0.visible = false

func _on_Trigger3_area_entered(area):
	$Dialogue0.visible = false

func _on_Trigger4_area_entered(_area):
	$Dialogue0.visible = false

func _on_Trigger5_area_entered(_area):
	$Dialogue0.visible = false
