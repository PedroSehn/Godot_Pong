extends KinematicBody2D

var speed := 600
var velocity = Vector2.ZERO

func _ready():
	pass
	randomize()
	velocity.x = [-1, 1][randi() % 2]
	velocity.y = [-0.7 , 0.8][randi() % 2]


func _physics_process(delta):
	move_and_slide(velocity * speed)
