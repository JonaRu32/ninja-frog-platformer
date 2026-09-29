extends Area2D


# Mata a la rana cuando la toca. No hace falta conectar nada desde el nivel:
# basta con poner la escena y cualquier cuerpo del grupo "jugador" muere
func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("jugador"):
		body.morir()
