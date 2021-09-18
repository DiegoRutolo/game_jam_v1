extends Area2D

export(NodePath) var pos_tp_path
onready var pos_tp: Position2D = get_node(pos_tp_path)


func _on_Extremo_body_entered(body):
	if body is Actor:
		body.position.x = pos_tp.global_position.x
