extends Actor

export var valor_mov = 200
export var fuerza_salto = 400

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _physics_process(delta):
	#Movimiento
	var dir  = 0
	
	if (Input.is_action_pressed("move_right")):
		dir += 1
	if (Input.is_action_pressed("move_left")):
		dir -= 1
		
	velocity.x = lerp(velocity.x,dir*valor_mov,0.2)
	
	if (Input.is_action_just_pressed("jump") and is_on_floor()): 
		velocity.y = -fuerza_salto
		
	
