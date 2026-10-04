extends Node2D

var velocidad = 120
var inicio


func _ready() -> void:
	inicio = $Bala.position


func _physics_process(delta: float) -> void:
	$Bala.position.x -= velocidad * delta


func _on_fin_recorrido_area_entered(area: Area2D) -> void:
	$Bala.position = inicio


func _on_golpe_body_entered(body: Node2D) -> void:
	if body.is_in_group("jugador"):
		body.morir()
