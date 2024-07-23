extends CharacterBody2D


@export var speed : float

func _ready():
	


func _physics_process(delta):
	
	var direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	if direction:
		velocity = direction * speed
	else:
		velocity = Vector2(0,0)
		#velocity.x = move_toward(velocity.x, 0, SPEED)
	move_and_slide()
