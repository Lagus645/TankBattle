extends KinematicBody2D


const SPEED = 350
const FLOOR = Vector2(0, -1)
const SNARYAD = preload("res://Snaryad.tscn")

var is_dead = false
var is_firing = false
var lives = 3
var velocity = Vector2()

func damage():
	if is_dead == false:
		if lives > 1:
			lives -= 1
			$AudioStreamPlayer3.play()
			yield(get_tree().create_timer(1), "timeout")
			$AudioStreamPlayer3.stop()
		else:
			lives -= 1
			die()

func add_hp():
	if lives == 3:
		lives += 0
	else:
		lives += 1

func _physics_process(delta):
	if is_dead == true:
		return
	if Input.is_action_pressed("ui_down") and Input.is_action_pressed("ui_left"):
		velocity.x = -SPEED / sqrt(2)
		velocity.y = SPEED / sqrt(2)
		$".".rotation = deg2rad(-135)
		$AnimatedSprite.play("go")
		$AudioStreamPlayer2.play()
	elif Input.is_action_pressed("ui_down") and Input.is_action_pressed("ui_right"):
		velocity.x = SPEED / sqrt(2)
		velocity.y = SPEED / sqrt(2)
		$".".rotation = deg2rad(135)
		$AnimatedSprite.play("go")
		$AudioStreamPlayer2.play()
	elif Input.is_action_pressed("ui_up") and Input.is_action_pressed("ui_right"):
		velocity.x = SPEED / sqrt(2)
		velocity.y = -SPEED / sqrt(2)
		$".".rotation = deg2rad(45)
		$AnimatedSprite.play("go")
		$AudioStreamPlayer2.play()
	elif Input.is_action_pressed("ui_up") and Input.is_action_pressed("ui_left"):
		velocity.x = -SPEED / sqrt(2)
		velocity.y = -SPEED / sqrt(2)
		$".".rotation = deg2rad(-45)
		$AnimatedSprite.play("go")
		$AudioStreamPlayer2.play()
	elif Input.is_action_pressed("ui_right"):
		velocity.y = 0
		velocity.x = SPEED
		$".".rotation = deg2rad(90)
		$AnimatedSprite.play("go")
		$AudioStreamPlayer2.play()
	elif Input.is_action_pressed("ui_left"):
		velocity.y = 0
		velocity.x = -SPEED
		$".".rotation = deg2rad(-90)
		$AnimatedSprite.play("go")
		$AudioStreamPlayer2.play()
	elif Input.is_action_pressed("ui_up"):
		velocity.x = 0
		velocity.y = -SPEED
		$".".rotation = deg2rad(0)
		$AnimatedSprite.play("go")
		$AudioStreamPlayer2.play()
	elif Input.is_action_pressed("ui_down"):
		velocity.x = 0
		velocity.y = SPEED
		$".".rotation = deg2rad(180)
		$AnimatedSprite.play("go")
		$AudioStreamPlayer2.play()
	else:
		velocity.x = 0
		velocity.y = 0
		$AudioStreamPlayer2.stop()
		if is_dead == false:
			$AnimatedSprite.play("default")
	if Input.is_action_just_pressed("ui_accept") && is_firing == false:
		is_firing = true
		$AnimatedSprite/AnimatedSprite2.play("PIY")
		$AudioStreamPlayer.play()
		var snaryad = SNARYAD.instance()
		get_tree().root.add_child(snaryad)
		snaryad.transform = $Position2D.global_transform


	velocity = move_and_slide(velocity, FLOOR)

func _on_AnimatedSprite2_animation_finished():
	if $AnimatedSprite/AnimatedSprite2.animation == "PIY":
		is_firing = false
		$AnimatedSprite/AnimatedSprite2.play("default")







func die():
	$AnimatedSprite.play("die")
	$AnimatedSprite/AnimatedSprite2.play("die")
	is_dead = true


