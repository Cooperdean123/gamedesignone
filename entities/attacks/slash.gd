extends Area2D

var damage = 10
var knockback = 128
var anim_life = 0.2

func _process(delta):
	anim_life -= delta
	if anim_life <= 0:
		queue_tree()
	
	pass
