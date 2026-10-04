extends Node2D

var golpeando = false
var rana = null

@onready var sprite = $AnimatedSprite2D


func _physics_process(delta: float) -> void:
	if golpeando:
		return

	if $RayDerecha.is_colliding():
		sprite.flip_h = false
		$Golpe.position.x = 18
		pegar()
	elif $RayIzquierda.is_colliding():
		sprite.flip_h = true
		$Golpe.position.x = -18
		pegar()


func pegar() -> void:
	golpeando = true
	sprite.offset.y = 25
	sprite.play("punch")


func _on_animated_sprite_2d_frame_changed() -> void:
	if sprite.animation == "punch" and sprite.frame >= 5 and sprite.frame <= 10:
		if rana != null:
			rana.morir()


func _on_animated_sprite_2d_animation_finished() -> void:
	golpeando = false
	sprite.offset.y = 0
	sprite.play("idle")


func _on_golpe_body_entered(body: Node2D) -> void:
	if body.is_in_group("jugador"):
		rana = body


func _on_golpe_body_exited(body: Node2D) -> void:
	if body.is_in_group("jugador"):
		rana = null
