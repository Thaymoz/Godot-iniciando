extends Control

# Ao iniciar a cena, pausar o jogo
func _ready():
	get_tree().paused = true  # Pausa o jogo no início
	print("Jogo pausado, aguardando o jogador clicar em 'Start Game'")

func _on_Start_Game_pressed() -> void:
	print("apertou!")
	$VBoxContainer/Button.hide()  # Oculta o botão "Start Game"
	start_game()  # Chama a função para iniciar o jogo
# Função que inicia o jogo (despausa e executa a lógica)
func start_game():
	get_tree().paused = false  # Despausa o jogo
	print("Jogo iniciado!")  # Aqui, você coloca a lógica para iniciar o jogo
