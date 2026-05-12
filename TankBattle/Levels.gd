extends Control


var msc = true


func _ready():
	pass 





func _on_Button2_pressed():
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://LOCATION.tscn")


func _on_Button3_pressed():
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://LOCATION3.tscn")


func _on_Button4_pressed():
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://Main Menu.tscn")


func _on_Button5_pressed():
	if msc == true:
		$AudioStreamPlayer.stop()
		$Button5/Mscon.hide()
		$Button5/Mscoff.show()
		msc = false
	else:
		$AudioStreamPlayer.play()
		$Button5/Mscon.show()
		$Button5/Mscoff.hide()
		msc = true


func _on_Button6_pressed():
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://LOCATION4.tscn")


func _on_Button7_pressed():
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://LOCATION5.tscn")


func _on_Button8_pressed():
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://LOCATION6.tscn")


func _on_Button_pressed():
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://LOCATION2.tscn")
