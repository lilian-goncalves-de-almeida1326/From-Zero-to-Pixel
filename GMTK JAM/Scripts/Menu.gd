extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_BtnEN_pressed():
	TranslationServer.set_locale("en_US")
	pass # Replace with function body.


func _on_BtnPTBR_pressed():
	TranslationServer.set_locale("pt_BR")
	pass # Replace with function body.


func _on_BtnES_pressed():
	TranslationServer.set_locale("es_ES")
	pass # Replace with function body.


func _on_BtnStart_pressed():
	get_tree().change_scene("res://Scenes/CasualGame.tscn")
	pass # Replace with function body.
