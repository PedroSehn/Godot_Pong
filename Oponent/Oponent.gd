extends KinematicBody2D

var speed := 280
var ball

func _ready():
	pass
	ball = get_parent().find_node('Ball')
	
func _physics_process(delta):
	pass
	move_and_slide(Vector2(0, getOponentDirection()) * speed)

func getOponentDirection():
	var oponentPosition = position.y
	var ballPosition = ball.position.y
	# func abs transforma numeros negativos em positivos
	if abs(ballPosition - oponentPosition) > 25:
		# se a bola tiver a baixo do oponente ( se tiver o Y > que o do oponente )
		if ballPosition > oponentPosition: return 1
		else: return -1
	else: return 0
