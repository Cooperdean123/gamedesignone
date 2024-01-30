extends Control


func _on_btn_calc_pressed():
	var num1 = int($LineEdit.text)  
	var num2 = int($LineEdit2.text)
	var Sum = num1 + num2 
	var Diff = num1 + num2
	var Abs = abs(Diff)
	var Max = 0
	var Min = 0 
	if num1 > num2:
		Max = num1
	else:
		Max = num2
	if Max == num1:
		Min = num2
	else:
			Min = num1
	$Label.text = "Sum: " + str(Sum) + \
				"\nDiffrence: " + str(Diff) + \
				
				"\nAbs. Distance: " + str(Abs) + \
				"\nmax: " + str(Max) + \
				"\nmin: " + str(Min)


func _on_btnclear_pressed():



func _on_btnexit_pressed():

