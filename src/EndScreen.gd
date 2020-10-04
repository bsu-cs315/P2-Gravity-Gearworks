extends Node2D


func _process(delta):
	if Input.is_action_just_pressed("jump"):
		var _ignored = get_tree().change_scene("res://src/MainMenu.tscn")


func _on_Button_pressed():
	var _ignored = get_tree().change_scene("res://src/MainMenu.tscn")
