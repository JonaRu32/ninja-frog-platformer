extends CharacterBody2D

var velocidad = 40

@onready var sprite = $AnimatedSprite2D


func _physics_process(delta: float) -> void:
	if not is_on_floor():
		velocity = velocity + get_gravity() * delta

	if velocidad > 0:
		if $ParedDerecha.is_colliding() or not $SueloDerecha.is_colliding():
			velocidad = -velocidad
	else:
		if $ParedIzquierda.is_colliding() or not $SueloIzquierda.is_colliding():
			velocidad = -velocidad

	velocity.x = velocidad
	sprite.flip_h = velocidad < 0
	move_and_slide()


func _on_zona_mortal_body_entered(body: Node2D) -> void:
	if body.is_in_group("jugador"):
		body.morir()
