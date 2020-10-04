extends Node2D


var score = 0


func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_ExitDoor_body_entered(body):
	$ExitDoor/ExitLabel.show()
	if Input.is_action_just_pressed("jump"):
		print("Level ending...")
		# TODO: Move scene to game over scene.


func _on_ExitDoor_body_exited(body):
	$ExitDoor/ExitLabel.hide()




func _on_Gem_gem_collected():
	# TODO: Play sound effect.
	score += 1
	$HUD/ScoreLabel.text = "= "+str(score)
