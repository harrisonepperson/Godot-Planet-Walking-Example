extends Node

export(float) var speed = 50

func _process(delta):
	
	if Input.is_action_pressed("walk_north"):
		var foot = $Character/North
		foot.force_raycast_update()
		
		if !foot.is_colliding():
			$Planet.rotate_x(deg2rad(speed) * delta)
	elif Input.is_action_pressed("walk_south"):
		var foot = $Character/South
		foot.force_raycast_update()
		
		if !foot.is_colliding():
			$Planet.rotate_x(-deg2rad(speed) * delta)
	if Input.is_action_pressed("walk_east"):
		var foot = $Character/East
		foot.force_raycast_update()
		
		if !foot.is_colliding():
			$Planet.rotate_y(-deg2rad(speed) * delta)
	elif Input.is_action_pressed("walk_west"):
		var foot = $Character/West
		foot.force_raycast_update()
		
		if !foot.is_colliding():
			$Planet.rotate_y(deg2rad(speed) * delta)
