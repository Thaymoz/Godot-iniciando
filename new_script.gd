extends Control

# Carrega a cena principal do jogo quando "Start Game" é pressionado
# Função chamada quando o botão "Start Game" é pressionado
func _on_Start_Game_pressed():
	$VBoxContainer/Button.hide()  # Oculta o botão "Start Game"
	


# Sai do jogo quando "Quit" é pressionado
func _on_Quit_pressed():
	get_tree().quit()
