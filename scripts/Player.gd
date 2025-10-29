extends CharacterBody2D

@export var speed: float = 220.0

func _physics_process(delta: float) -> void:
    var input_vector := Input.get_vector("move_left", "move_right", "move_up", "move_down")
    velocity = input_vector * speed
    move_and_slide()
