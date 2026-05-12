extends Node2D



var time = 0

func _ready():
	pass


func _process(delta):
	if $player.lives == 2:
		$Stats/CanvasLayer/Hp3.hide()
	elif $player.lives == 1:
		$Stats/CanvasLayer/Hp2.hide()
	elif $player.lives == 0:
		$Stats/CanvasLayer/Hp.hide()
	if $player2.lives == 2:
		$Stats/CanvasLayer/Hp4.hide()
	elif $player2.lives == 1:
		$Stats/CanvasLayer/Hp5.hide()
	elif $player2.lives == 0:
		$Stats/CanvasLayer/Hp6.hide()
	if $player2.lives == 0 || $player.lives == 0:
		var time_1 = delta
		time += time_1
		if $player2.lives == 0 && time > 3 && $player.lives > 0:
			$P1w.show()
		elif $player.lives == 0 && time > 3 && $player2.lives > 0:
			$P2w.show()
		if time > 8:
			get_tree().change_scene("res://Levels.tscn")
