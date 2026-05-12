extends Node2D



func _on_Area2D_body_entered(body):
	if "player" in body.name:
		body.damage()
		$Mina.hide()
		$AnimatedSprite.show()
		$AnimatedSprite.play("default")
		$AudioStreamPlayer.play()
		yield(get_tree().create_timer(0.9), "timeout")
		queue_free()
