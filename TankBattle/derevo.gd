extends StaticBody2D

var lives = 1

func damage():
	lives -= 1
	if lives == 0:
		razr()

func razr():
	$Derevo.hide()
	$CollisionShape2D2.move_local_y(6000)
	$AudioStreamPlayer.play()
	yield(get_tree().create_timer(1.5), "timeout")
	queue_free()
	

