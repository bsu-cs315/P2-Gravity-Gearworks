extends Area2D


signal gem_collected


# Called when the node enters the scene tree for the first time.
func _ready():
	$CollisionPolygon2D.disabled = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass




func _on_Gem_body_entered(body):
	emit_signal("gem_collected")
	queue_free()
	$CollisionPolygon2D.set_deferred("disabled",true)
