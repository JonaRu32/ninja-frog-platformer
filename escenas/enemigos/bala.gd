extends Area2D

var velocidad = 120


func _physics_process(delta: float) -> void:
	position.x -= velocidad * delta


func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("jugador"):
		body.morir()
	queue_free()


func _on_vida_timeout() -> void:
	queue_free()
