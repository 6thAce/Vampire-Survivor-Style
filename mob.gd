extends CharacterBody2D

@onready var player = get_node_or_null("/root/Game/player")

func _ready() -> void:
	pass

func _physics_process(delta):
	if player:
		var direction = global_position.direction_to(player.global_position)
		velocity = direction * 300
		move_and_slide()
