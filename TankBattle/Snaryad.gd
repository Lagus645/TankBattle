extends Area2D

const SPEED = 40
var velocity = Vector2()

func _physics_process(delta):
	position += transform.x * SPEED



func _on_Snaryad_body_entered(body):
		if "player" in body.name || "derevo" in body.name  || "NPS" in body.name || "bomb" in body.name:
			body.damage()
		queue_free()
