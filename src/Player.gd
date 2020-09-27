extends KinematicBody2D


onready var gravity = ProjectSettings.get("physics/2d/default_gravity") * 0.2
onready var animated_sprite = $AnimatedSprite


var velocity = Vector2()
var jumping = true

# Called when the node enters the scene tree for the first time.
func _ready():
	var camera = $Camera2D


func _physics_process(delta):
	# Side-to-side movement
	var direction = get_direction()
	var linear_velocity = direction * 300
	var _ignored = move_and_slide(linear_velocity)
	
	
	# Gravity using Vector2 velocity
	velocity.y += gravity + delta
	velocity = move_and_slide(velocity, Vector2(0,-1))
	
	
	# Jumping
	if Input.is_action_just_pressed("jump") and !jumping:
		velocity.y = -525
		jumping = true
	
	if is_on_floor():
		jumping = false
	
	
	# Sprite flipping based on direction
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
