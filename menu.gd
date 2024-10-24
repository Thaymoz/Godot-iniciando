extends Control


func _on_button_pressed() -> void:
	$VBoxContainer/Button.hide()

func _on_button_2_pressed() -> void:
	get_tree().quit()
	get_tree().quit()
