extends Area2D

export(String) var siguiente_mundo

onready var inventario = get_node("/root/Inventario")


func _on_Portal_body_entered(body):
	if inventario.llave:
		get_tree().change_scene(siguiente_mundo)
