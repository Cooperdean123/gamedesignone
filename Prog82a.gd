extends Control



func _on_btncalc_pressed():
	var SpeedLimit = int($txtLimit.text)
	var CarSpeed = int ($txtSpeed.text)
var milesover = CarSpeed - SpeedLimit
var Fine = 20.0 * (milesover * 5.0) 
$lbl.text = "Fine: $ %.2f" % fine



func _on_btnclea_pressed():
	get_tree().quit()
