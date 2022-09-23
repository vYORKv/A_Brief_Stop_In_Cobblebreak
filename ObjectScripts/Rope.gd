extends KinematicBody2D

func _ready():
	if PlayerVariables.has_rope == true:
		self.queue_free()

func _on_RopeInter_area_entered(_area):
	SFXPlayer.rope()
	PlayerVariables.has_rope = true
	self.queue_free()
