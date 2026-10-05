extends StaticBody2D

var escena_bala = preload("res://escenas/enemigos/bala.tscn")

func _on_disparo_timeout() -> void:	
	var bala = escena_bala.instantiate()
	print ("PUUM")
