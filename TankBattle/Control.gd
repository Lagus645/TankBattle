extends Control

var msc = true



func _on_Button_pressed():
	get_tree().change_scene("res://Levels.tscn")


func _on_Button2_pressed():
	pass # Replace with function body.


func _on_Button3_pressed():
	get_tree().quit()


func _on_Button4_pressed():
	if msc == true:
		$AudioStreamPlayer.stop()
		$Button4/Mscon.hide()
		$Button4/Mscoff.show()
		msc = false
	else:
		$AudioStreamPlayer.play()
		$Button4/Mscon.show()
		$Button4/Mscoff.hide()
		msc = true


func _on_Button5_pressed():
	$Nikita.show()
	$Txt1.show()
	yield(get_tree().create_timer(7), "timeout")
	$Txt2.show()
	yield(get_tree().create_timer(7), "timeout")
	$Txt3.show()
	yield(get_tree().create_timer(4), "timeout")
	$Nikita.hide()
	$Txt1.hide()
	$Txt2.hide()
	$Txt3.hide()
