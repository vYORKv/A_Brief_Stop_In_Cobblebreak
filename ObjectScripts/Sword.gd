extends KinematicBody2D

func _ready():
	if PlayerVariables.has_sword == true:
		self.queue_free()

func _on_SwordInter_area_entered(_area):
	SFXPlayer.sword()
	PlayerVariables.has_sword = true
	self.queue_free()
