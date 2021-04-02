extends KinematicBody

export(float) var speed = 50
export(float) var acceleration = 5

var direction = Vector3()
var velocity = Vector3()
var gravity = -20

onready var up = global_transform.origin.normalized()
onready var forward = global_transform.basis.y
onready var right = forward.cross(up).normalized()

func _process(delta):
	direction = Vector3()
	up = global_transform.origin.normalized()
	right = forward.cross(up).normalized()
	forward = up.cross(right).normalized()
	
	if Input.is_action_pressed("walk_north"):
		direction += forward
	elif Input.is_action_pressed("walk_south"):
		direction -= forward
	if Input.is_action_pressed("walk_east"):
		direction += right
	elif Input.is_action_pressed("walk_west"):
		direction -= right
	
	direction = direction.normalized()
	direction += up * gravity
	direction = direction.normalized()

	velocity = velocity.linear_interpolate(direction * speed, acceleration * delta)
	velocity = move_and_slide(velocity, up)
	
	transform = transform.looking_at(Vector3(), forward)
