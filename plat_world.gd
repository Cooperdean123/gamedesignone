extends Node2D



func _ready():
	$world/CollisionPolygon2D/Polygon2D.polygon = $world/CollisionPolygon2D.polygon
	pass 


func _on_interact_mouse_entered():
	if Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT):
		$interact.queue_free()
		
		
var dragging = false
var offset = Vector2.ZERO

func _process(delta):
	if dragging:
		$dragable.global_posistion = get_global_mouse_posisiton() - offset


func _on_button_button_down():
dragging = true
offset = get_global_mouse_posistion() - $draggable.global_position


func _on_button_button_up():
	dragging = false


func _on_pltenemy_body_shape_entered(body_rid, body, body_shape_index, local_shape_index):
	if body.name == "plt_player":
		body.queue.free()
		OS.alert("Rest In Peace")
		get_free().reload_current_scene()
