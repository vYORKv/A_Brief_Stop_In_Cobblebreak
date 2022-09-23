extends KinematicBody2D

func _ready():
	pass

func _on_DeadTreeInter_area_entered(_area):
	SFXPlayer.dead_tree()
	self.queue_free()
