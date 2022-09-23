extends KinematicBody2D

func _ready():
	pass
	
func _on_wUpD2Inter_area_entered(_area):
	if $AnimatedSprite.frame == 0:
		$DoorOpen.play()
		self.set_collision_layer(2)
		$AnimatedSprite.frame = 1
	else:
		$DoorClose.play()
		self.set_collision_layer(1)
		$AnimatedSprite.frame = 0
