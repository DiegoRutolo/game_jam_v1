extends Area2D

export(String) var siguiente_mundo


func _on_Portal_body_entered(body):
	get_tree().change_scene(siguiente_mundo)
