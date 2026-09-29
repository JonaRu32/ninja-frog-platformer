extends Area2D


# Mata a la rana cuando la toca. 
func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("jugador"):
		body.morir()
