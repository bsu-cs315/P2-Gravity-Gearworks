extends KinematicBody2D


const STRENGTH_JUMP := -525.0
const SPEED_WALK := 300.0

var _velocity := Vector2()
var _jumping := true

onready var gravity = ProjectSettings.get("physics/2d/default_gravity") * 0.2
onready var _animated_sprite := $AnimatedSprite

# Called when the node enters the scene tree for the first time.
func _ready():
	var _camera := $Camera2D


func _physics_process(delta):
	# Side-to-side movement
	var direction = get_direction()
	var linear_velocity = direction * SPEED_WALK
	var _ignored = move_and_slide(linear_velocity)
	
	# Gravity using Vector2 velocity
	_velocity.y += gravity + delta
	_velocity = move_and_slide(_velocity, Vector2(0,-1))
	
	# Jumping
	if Input.is_action_just_pressed("jump") and !_jumping:
		_velocity.y = STRENGTH_JUMP
		_jumping = true
	
	if is_on_floor():
		_jumping = false
	
	# Sprite flipping based on direction
	if direction.x != 0:
		_animated_sprite.scale.x = 1 if direction.x > 0 else -1
		_animated_sprite.play("walk")
	if direction.x == 0:
		_animated_sprite.play("idle")


func get_direction():
	return Vector2(
		Input.get_action_strength("move_right") - Input.get_action_strength("move_left"),
		-1 if is_on_floor() and Input.is_action_just_pressed("jump") else 0
	)
