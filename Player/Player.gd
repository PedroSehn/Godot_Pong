extends KinematicBody2D

var speed := 400

func _physics_process(delta):
	pass
	var velocity = Vector2.ZERO
	if Input.is_action_pressed('ui_up'):
		pass
		velocity.y -= 1
	if Input.is_action_pressed("ui_down"):
		pass
		velocity.y += 1
		
	move_and_slide(velocity * speed)
