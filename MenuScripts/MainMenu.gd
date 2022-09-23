extends Control

onready var buttons = $Buttons
onready var start = $Buttons/Start
onready var quit = $Buttons/Quit
onready var settings = $Buttons/Settings
onready var credits = $Buttons/Credits
onready var settings_menu = $Settings
onready var credits_menu = $Credits

onready var master_full = load("res://Assets/Graphics/UI/Buttons/VolumeButtons/MasterFull.png")
onready var master_full_focus = load("res://Assets/Graphics/UI/Buttons/VolumeButtons/MasterFullFocus.png")
onready var master_half = load("res://Assets/Graphics/UI/Buttons/VolumeButtons/MasterHalf.png")
onready var master_half_focus = load("res://Assets/Graphics/UI/Buttons/VolumeButtons/MasterHalfFocus.png")
onready var master_x = load("res://Assets/Graphics/UI/Buttons/VolumeButtons/MasterX.png")
onready var master_x_focus = load("res://Assets/Graphics/UI/Buttons/VolumeButtons/MasterXFocus.png")
onready var music_full = load("res://Assets/Graphics/UI/Buttons/VolumeButtons/MusicFull.png")
onready var music_full_focus = load("res://Assets/Graphics/UI/Buttons/VolumeButtons/MusicFullFocus.png")
onready var music_half = load("res://Assets/Graphics/UI/Buttons/VolumeButtons/MusicHalf.png")
onready var music_half_focus = load("res://Assets/Graphics/UI/Buttons/VolumeButtons/MusicHalfFocus.png")
onready var music_x = load("res://Assets/Graphics/UI/Buttons/VolumeButtons/MusicX.png")
onready var music_x_focus = load("res://Assets/Graphics/UI/Buttons/VolumeButtons/MusicXFocus.png")
onready var effects_full = load("res://Assets/Graphics/UI/Buttons/VolumeButtons/EffectsFull.png")
onready var effects_full_focus = load("res://Assets/Graphics/UI/Buttons/VolumeButtons/EffectsFullFocus.png")
onready var effects_half = load("res://Assets/Graphics/UI/Buttons/VolumeButtons/EffectsHalf.png")
onready var effects_half_focus = load("res://Assets/Graphics/UI/Buttons/VolumeButtons/EffectsHalfFocus.png")
onready var effects_x = load("res://Assets/Graphics/UI/Buttons/VolumeButtons/EffectsX.png")
onready var effects_x_focus = load("res://Assets/Graphics/UI/Buttons/VolumeButtons/EffectsXFocus.png")

const MASTER_BUS = 0
const MUSIC_BUS = 1
const SFX_BUS = 2

var num_master = 2
var num_music = 2
var num_effects = 2
var volume_levels = [-60.0, -12.0, -6.0]

func _ready():
	PlayerVariables.reset()
	start.grab_focus()

func _on_Start_pressed():
	get_tree().change_scene("res://World.tscn")
	MusicPlayer.play_world()

func _on_Quit_pressed():
	get_tree().quit()

func _on_Settings_pressed():
	buttons.visible = false
	settings_menu.popup_centered()

func _on_Credits_pressed():
	buttons.visible = false
	credits_menu.popup_centered()

func _on_MasterVolume_pressed():
	num_master = (num_master - 1) % 3
	var db = volume_levels[num_master]
	AudioServer.set_bus_volume_db(MASTER_BUS, db)
	if db == -12.0:
		$Settings/SettingsButtons/MasterVolume.texture_normal = master_half
		$Settings/SettingsButtons/MasterVolume.texture_focused = master_half_focus
	elif db == -60.0:
		$Settings/SettingsButtons/MasterVolume.texture_normal = master_x
		$Settings/SettingsButtons/MasterVolume.texture_focused = master_x_focus
	else:
		$Settings/SettingsButtons/MasterVolume.texture_normal = master_full
		$Settings/SettingsButtons/MasterVolume.texture_focused = master_full_focus

func _on_MusicVolume_pressed():
	num_music = (num_music - 1) % 3
	var db = volume_levels[num_music]
	AudioServer.set_bus_volume_db(MUSIC_BUS, db)
	if db == -12.0:
		$Settings/SettingsButtons/MusicVolume.texture_normal = music_half
		$Settings/SettingsButtons/MusicVolume.texture_focused = music_half_focus
	elif db == -60.0:
		$Settings/SettingsButtons/MusicVolume.texture_normal = music_x
		$Settings/SettingsButtons/MusicVolume.texture_focused = music_x_focus
	else:
		$Settings/SettingsButtons/MusicVolume.texture_normal = music_full
		$Settings/SettingsButtons/MusicVolume.texture_focused = music_full_focus

func _on_EffectVolume_pressed():
	num_effects = (num_effects - 1) % 3
	var db = volume_levels[num_effects]
	AudioServer.set_bus_volume_db(SFX_BUS, db)
	if db == -12.0:
		$Settings/SettingsButtons/EffectVolume.texture_normal = effects_half
		$Settings/SettingsButtons/EffectVolume.texture_focused = effects_half_focus
	elif db == -60.0:
		$Settings/SettingsButtons/EffectVolume.texture_normal = effects_x
		$Settings/SettingsButtons/EffectVolume.texture_focused = effects_x_focus
	else:
		$Settings/SettingsButtons/EffectVolume.texture_normal = effects_full
		$Settings/SettingsButtons/EffectVolume.texture_focused = effects_full_focus

func _on_Back_pressed():
	settings_menu.hide()
	buttons.visible = true
	start.grab_focus()

func _on_Back2_pressed():
	credits_menu.hide()
	buttons.visible = true
	start.grab_focus()
