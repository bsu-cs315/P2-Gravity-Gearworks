extends KinematicBody2D


onready var gravity = ProjectSettings.get("physics/2d/default_gravity")
onready var animated_sprite = $AnimatedSprite
onready var camera = $Camera2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _physics_process(delta):
	var direction = get_direction()
	var linear_velocity = direction * 300
	var vertical_velocity = Vector2.ZERO
	var _ignored = move_and_slide(linear_velocity)
	
	
	vertical_velocity.y += gravity * 100
	
	if direction.x != 0:
		animated_sprite.scale.x = 1 if direction.x > 0 else -1
		animated_sprite.play("walk")

	if direction.x == 0:
		animated_sprite.play("idle")


func get_direction():
	return Vector2(
		Input.get_action_strength("move_right") - Input.get_action_strength("move_left"),
		-1 if is_on_floor() and Input.is_action_just_pressed("jump") else 0
	)
