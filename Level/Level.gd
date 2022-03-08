extends Node

var playerScore = 0
var opponentScore = 0


func _on_WallLeft_body_entered(body):
	pass # Replace with function body.
	opponentScore += 1
	handlePoint()
	


func _on_WallRight_body_entered(body):
	pass # Replace with function body.
	playerScore += 1 
	handlePoint()
	

func _process(delta):
	$PlayerScore.text = str(playerScore)
	$OpponentScore.text = str(opponentScore)
	$ContDown.text = str(int($Timer.time_left) + 1)
	


func _on_Timer_timeout():
	pass 
	get_tree().call_group('BallGroup', 'restart')
	$ContDown.visible = false

func handlePoint():
	pass
	$Ball.position = Vector2(512, 300)
	get_tree().call_group('BallGroup', 'stop')
	$Timer.start()
	$ContDown.visible = true
	$ScoreSound.play()
	$Player.position.x = 19
	$Player.position.y = 300
	resetPositions()

func resetPositions():
	pass
	$Player.position.x = 19
	$Player.position.y = 300
	
	$Oponent.position.x = 1008
	$Oponent.position.y = 300
	
