extends  RigidBody2D

@export var speed = 15


var dir
var gravity = 980

@onready var animator = $sprite


func _physics_process(delta):
	
	Move(delta)
	Cram()
	pass
	
#func Move(delta):
	#
	#dir = Input.get_axis('ui_down', 'ui_up')
	#
	#if dir:
		#velocity.x = dir * speed
	#else:
		#velocity.x = 0
		#
	#if not is_on_floor():
		#velocity.y += gravity * delta
#
	#if is_on_floor():
		#jumps = 1
		#
	#move_and_slide()
	#
	#pass
	
func Move(delta):
	
	dir = Input.get_axis('ui_down', 'ui_up')
	
	apply_impulse(Vector2(dir, 0) * speed , $CollisionShape2D2.position + Vector2(-6,7))
	
	
	

	pass

func Cram():
	
	dir = Input.get_axis('ui_left', 'ui_right')
	
	apply_impulse(Vector2(0, dir) * speed , $CollisionShape2D.position)
