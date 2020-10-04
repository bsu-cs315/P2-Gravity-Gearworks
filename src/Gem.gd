extends Area2D


signal gem_collected


# Called when the node enters the scene tree for the first time.
func _ready():
	$CollisionPolygon2D.disabled = false


func _on_Gem_body_entered(body):
	emit_signal("gem_collected")
	$AnimationPlayer.play("collected")
	$CollisionPolygon2D.set_deferred("disabled",true)
