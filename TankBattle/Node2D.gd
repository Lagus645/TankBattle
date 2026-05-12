extends Node2D

func _on_Button_pressed():
	get_tree().change_scene("res://Main Menu.tscn")

func _ready():
	$AnimationPlayer.play("int1")
	yield(get_tree().create_timer(3.5), "timeout")
	get_tree().change_scene("res://Main Menu.tscn")





