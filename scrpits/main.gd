extends Node2D


func _on_button_pressed() -> void:
	_on_Start_Game_pressed()
func _on_Start_Game_pressed():
	$VBoxContainer/Button.hide()

func _on_button_2_pressed() -> void:
	_on_Quit_pressed()
func _on_Quit_pressed():
	get_tree().quit()
