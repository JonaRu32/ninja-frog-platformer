extends Node2D

var velocidad_giro = 2.5
var muerto = false


func _process(delta: float) -> void:
	if muerto == false:
		$Orbita.rotation += velocidad_giro * delta


func _on_bola_body_entered(body: Node2D) -> void:
	if body.is_in_group("jugador") and muerto == false:
		body.morir()


func _on_cuerpo_body_entered(body: Node2D) -> void:
	if body.is_in_group("jugador") and body.death == false and muerto == false:
		muerto = true
		$Orbita.hide()
		$AnimatedSprite2D.play("hit")


func _on_animated_sprite_2d_animation_finished() -> void:
	queue_free()
