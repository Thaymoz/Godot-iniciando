extends Control
@onready var timer = $Timer as Timer


func _ready() -> void:
	timer.start(2.0)


func _process(delta: float) -> void:
	pass


func _on_timer_timeout() -> void:
	get_tree().change_scene_to_file("res://Scence/main.tscn")
