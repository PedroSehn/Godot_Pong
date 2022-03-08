extends KinematicBody2D

var speed := 600
var velocity = Vector2.ZERO

func _ready():
	pass
	randomize()
	velocity.x = [-1, 1][randi() % 2]
	velocity.y = [-0.7 , 0.8][randi() % 2]


func _physics_process(delta):
	var colisionObject = move_and_collide(velocity * speed * delta)
	if colisionObject: 
		pass
		velocity = velocity.bounce(colisionObject.normal)
		$CollisionSound.play()


func stop():
	pass
	speed = 0
	
func restart():
	pass 
	speed = 600
	randomize()
	velocity.x = [-1, 1][randi() % 2]
	velocity.y = [-0.7 , 0.8][randi() % 2]
