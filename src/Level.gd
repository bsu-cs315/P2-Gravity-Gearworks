extends Node2D


var exit_door_entered = 0
var score = 0


func _ready():
	pass # Replace with function body.

func _process(delta):
	if Input.is_action_just_pressed("jump") and exit_door_entered == 1:
		var _ignored = get_tree().change_scene("res://src/EndScreen.tscn")


func _on_ExitDoor_body_entered(body):
	$ExitDoor/ExitLabel.show()
	exit_door_entered = 1


func _on_ExitDoor_body_exited(body):
	$ExitDoor/ExitLabel.hide()
	exit_door_entered = 0


func _on_Gem_gem_collected():
	# TODO: Play sound effect.
	score += 1
	$HUD/ScoreLabel.text = "= "+str(score)
