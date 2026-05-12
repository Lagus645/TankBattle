extends Node2D



func _on_Area2D_body_entered(body):
	if "player" in body.name:
		body.damage()
		body.damage()
	yield(get_tree().create_timer(0.3), "timeout")
	$boom/CollisionShape2D.disabled
	queue_free()
