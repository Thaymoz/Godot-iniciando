extends Node2D

var clicks = 0
var time = 5
var lv1 = 10
var rodando = true

@onready var animation = $anim as AnimatedSprite2D

func _ready() -> void:
	pass

func _process(delta: float) -> void:
	if rodando:
		time -= delta
		clicado()
		if time <= 0:
			rodando = false
			if clicks >= lv1:
				get_tree().change_scene_to_file("res://Scence/fases.tscn")
			else:
				print("srry")
			clicks = 0
	$Label.text = "Flexões " + str(clicks) + "/10" + " Tempo: " + str(floor(time))
	
func clicado():
	if Input.is_action_just_pressed("space"):
		clicks += 1
		animation.play("flexao")
		if clicks >= lv1:
			get_tree().change_scene_to_file("res://Scence/fases.tscn")
			rodando = false
