extends Node2D


var exit_door_entered = 0
var score = 0


func _ready():
	$LevelMusic.play()

func _process(_delta):
	if Input.is_action_just_pressed("jump") and exit_door_entered == 1:
		$LevelMusic.stop()
		var _ignored = get_tree().change_scene("res://src/EndScreen.tscn")


func _on_ExitDoor_body_entered(_body):
	$ExitDoor/ExitLabel.show()
	exit_door_entered = 1


func _on_ExitDoor_body_exited(_body):
	$ExitDoor/ExitLabel.hide()
	exit_door_entered = 0


func _on_Gem_gem_collected():
	$CoinSound.play()
	score += 1
	$HUD/ScoreLabel.text = "= "+str(score)
	$Player/AnimatedSprite.speed_scale += 0.06
