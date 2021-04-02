extends KinematicBody

export(float) var speed = 50
export(float) var acceleration = 5

var direction = Vector3()
var velocity = Vector3(0,0,0)
var gravity = 20

func _process(delta):
	direction = Vector3()
	var here = self.global_transform.origin
	var down = -here.normalized()
	
	if Input.is_action_pressed("walk_north"):
		direction.y += 1
	elif Input.is_action_pressed("walk_south"):
		direction.y -= 1
	if Input.is_action_pressed("walk_east"):
		direction.x += 1
	elif Input.is_action_pressed("walk_west"):
		direction.x -= 1
	
	direction += down * gravity
	direction = direction.normalized()
	
	var t_velocity = velocity

	velocity = t_velocity.linear_interpolate(direction * speed, acceleration * delta)
	velocity = move_and_slide(velocity, -down)
	
	look_at(Vector3(), Vector3(0,1,0))
