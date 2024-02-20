extends RigidBody2D

var speed = 100
var direction = -1
# Called when the node enters the scene tree for the first time.
func _ready():
	$Timer.start()

func _phys_process(delta):
	linear_velocity.x = speed * direction

func _on_timer_timeout():
	direction *= -1
