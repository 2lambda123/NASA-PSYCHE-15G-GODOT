extends Position2D

signal correct()
export var correct = false
export(int, "Object 1", "Object 2", "Object 3") var object_id

func _draw():
	if object_id == 0:
		draw_circle(Vector2.ZERO, 75, Color.blanchedalmond)
	elif object_id == 1:
		draw_polygon(PoolVector2Array([Vector2(64,64),Vector2(-64,64),Vector2(-64,-64),Vector2(64,-64)]), 
	PoolColorArray([Color(1,1,1,1)]),
	PoolVector2Array([Vector2(64,64),Vector2(-64,64),Vector2(-64,-64),Vector2(64,-64)]), 
	null)
	elif object_id == 2:
		draw_polygon(PoolVector2Array([Vector2(0,64),Vector2(64,0),Vector2(0,-64),Vector2(-64,0)]), 
	PoolColorArray([Color(1,1,1,1)]),
	PoolVector2Array([Vector2(0,64),Vector2(64,0),Vector2(0,-64),Vector2(-64,0)]), 
	null)
	#modulate.a = 0.05
	
func select():
	for child in get_tree().get_nodes_in_group("zone"):
		child.deselect()
	modulate = Color.webmaroon
	#modulate.a = 0.05
	if correct:
		emit_signal("correct")
	
func deselect():
	modulate = Color.white
	#modulate.a = 0.05
	
	
