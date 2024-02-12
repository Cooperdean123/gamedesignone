extends Control


func sayhi():
	print("hi")

func getArea(length, width):
	var area = length * width
	return area

func _on_calc_pressed():
	sayhi()
	var l = int($LineEdit.text)
	var w = int($LineEdit2.text)
	var a = getArea(l,w)
	var p = getPerim(l,w) 
$lblout.text = "Area: Sd/nPerimiter: sd" % [a, p]
