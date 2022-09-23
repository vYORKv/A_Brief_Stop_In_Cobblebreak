extends KinematicBody2D

func _ready():
	if PlayerVariables.has_apple == true:
		self.queue_free()

func _on_AppleInter_area_entered(_area):
	SFXPlayer.apple()
	PlayerVariables.has_apple = true
	self.queue_free()
