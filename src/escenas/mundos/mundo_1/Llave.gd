extends Area2D

onready var inventario=get_node("/root/Inventario")


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Llave_body_entered(body):
	inventario.llave_conseguida()
	get_parent().remove_child(self)
	queue_free()
