extends Area2D


signal gem_collected

var rng = RandomNumberGenerator.new()
var delay_time = rng.randf_range(0.01,0.99)

# Called when the node enters the scene tree for the first time.
func _ready():
	$CollisionPolygon2D.disabled = false
	$AnimationPlayer/RandomDelay.wait_time = delay_time
	$AnimationPlayer/RandomDelay.start()
	$AnimationPlayer.play_backwards("collected")


func _on_Gem_body_entered(body):
	emit_signal("gem_collected")
	$AnimationPlayer.play("collected")
	$CollisionPolygon2D.set_deferred("disabled",true)
