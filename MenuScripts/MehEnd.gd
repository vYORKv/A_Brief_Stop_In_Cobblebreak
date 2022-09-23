extends Node2D

func _ready():
	$Music.play()
	
func _input(event):
	if event.is_action_pressed("ui_accept"):
		get_tree().change_scene("res://MainMenu.tscn")
		MusicPlayer.play_menu()
