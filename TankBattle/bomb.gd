extends Node2D

var hp = 0
const BOOM = preload("res://boom.tscn")


func die():
	if hp == 0:
		hp=1
		$Sprite.hide()
		$AnimatedSprite.show()
		$AnimatedSprite.play("boom")
		var boom = BOOM.instance()
		get_tree().root.add_child(boom)
		boom.transform = $Position2D.global_transform
		yield(get_tree().create_timer(0.7), "timeout")
		queue_free()




func _on_Area2D2_area_entered(body):
	if "Snaryad" in body.name || "boom" in body.name:
		die()



