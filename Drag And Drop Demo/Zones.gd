extends Position2D

signal correct()
export var correct = false
export(int, "bus","dish","left_solar","magnet","right_solar","spectr") var object_id
export var is_goal : bool

func _draw():
	if object_id == 0:
		#draw_circle(Vector2.ZERO, 75, Color.blanchedalmond)
		pass
	elif object_id == 1:
		#draw_polygon(PoolVector2Array([Vector2(64,64),Vector2(-64,64),Vector2(-64,-64),Vector2(64,-64)]), 
	#PoolColorArray([Color(1,1,1,1)]),
	#PoolVector2Array([Vector2(64,64),Vector2(-64,64),Vector2(-64,-64),Vector2(64,-64)]), 
	#null)
		pass
	elif object_id == 2:
		#draw_polygon(PoolVector2Array([Vector2(0,64),Vector2(64,0),Vector2(0,-64),Vector2(-64,0)]), 
	#PoolColorArray([Color(1,1,1,1)]),
	#PoolVector2Array([Vector2(0,64),Vector2(64,0),Vector2(0,-64),Vector2(-64,0)]), 
	#null)
	#modulate.a = 0.05
		pass
func select(object):
	modulate = Color.green
	#modulate.a = 0.05
	
func deselect():
	modulate = Color.white
	#modulate.a = 0.05
	
	
