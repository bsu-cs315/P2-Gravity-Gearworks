extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass

func _process(delta):
	if Input.is_action_just_pressed("jump"):
		var _ignored = get_tree().change_scene("res://src/Level.tscn")


func _on_StartGameButton_pressed():
	var _ignored = get_tree().change_scene("res://src/Level.tscn")
