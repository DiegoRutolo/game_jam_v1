class_name Actor
extends KinematicBody2D

export var aceleracion = 200
export var vmax = 300

onready var gravedad = ProjectSettings.get("physics/2d/default_gravity")
var velocity=Vector2.ZERO

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	#Gravedad
	if(!is_on_floor()):
		velocity.y+=gravedad
	
	move_and_slide(velocity, Vector2.UP)
