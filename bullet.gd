extends Area2D

var travelled_distance = 0 

func _physics_process(delta):
	const Speed = 1000
	const Range = 1200
	var direction = Vector2.RIGHT.rotated(rotation)
	position += direction * Speed * delta
	
	travelled_distance += Speed * delta
	if travelled_distance > Range:
		queue_free()
