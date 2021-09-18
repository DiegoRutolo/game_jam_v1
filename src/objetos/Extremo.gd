extends Area2D

export(NodePath) var pos_tp_path
onready var pos_tp = get_node(pos_tp_path)


func _on_Extremo_body_entered(body):
	if body is KinematicBody2D:		# TODO: Cambiar por Actor
		body.position.x = pos_tp.x
