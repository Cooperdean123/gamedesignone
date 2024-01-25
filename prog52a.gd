extends Control



func _on_btncalc_pressed():
	var length = int($LineEdit.text)
	var width =int($LineEdit2.text)
	var area = length * width
	var perim = 2 * length + 2 * width
	$LBLArea.text = "area." + str(area)
	$lblPerim.text = "Perimiter." + str(perim)
# opperations + - = / 
# str string (text)
# int interger (whole number)
# float - floating point number 


func _on_btnclear_pressed():
	$lineedit.text = ""
	$lineedit2.text = ""
	$lblarea.text = ""
	$lblperim.text = ""
	
	
	


func _on_btn_exit_pressed():
	get_tree ().quit ()
