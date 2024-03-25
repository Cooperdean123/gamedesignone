class_name BaseItem extends Node2D

var value 
var flicker_state = false
var flicker_start_time = 10 
var flicker_intervole = 0.1
var current_time = 0 
var time_to_despawn = 15.0



func _ready(): $AnimatedSprite2D.play()

func remove():
	value = 0 
	queue_free()

func interact(player) :
# to be implemented to child class
reserve()

func _init(deafult_value: int = 1)



func _process(delta):
	pass
