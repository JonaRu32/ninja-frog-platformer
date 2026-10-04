extends Area2D

var cogida = false


func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("jugador") and cogida == false:
		cogida = true
		$AnimatedSprite2D.play("cogida")


func _on_animated_sprite_2d_animation_finished() -> void:
	queue_free()
