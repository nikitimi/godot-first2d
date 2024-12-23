extends Sprite2D

var speed = 400
var angular_speed = PI / 2

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print("Boss has appeared!");
	position.x = 500
	position.y = 250
	pass # Replace with function body.
	
func _unhandled_input(event: InputEvent) -> void:
	pass	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	#var direction = 0
	#if Input.is_action_pressed("ui_left"):
		#direction += -1
	#if Input.is_action_pressed("ui_right"):
		#direction += 1	
		
	#rotation += angular_speed * delta * direction
	rotation += angular_speed * delta
	
	#var velocity = Vector2.ZERO
	#if Input.is_action_pressed("ui_up"):
		#velocity = Vector2.UP.rotated(rotation) * speed
	var velocity = Vector2.UP.rotated(rotation) * speed
	
	position += velocity * delta


func _on_button_pressed() -> void:
	set_process(not is_processing())
