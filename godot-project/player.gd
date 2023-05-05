extends CharacterBody2D


const SPEED = 100.0

func _ready():
	#$AnimationPlayer.play("idle")
	pass

func _physics_process(delta):
	var directionX = Input.get_axis("move_left", "move_right")
	if directionX:
		velocity.x = directionX * SPEED
		$AnimationPlayer.play("walk")
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		#$AnimationPlayer.play("idle")
		
	if velocity.x < 0:
		$Sprite2D.flip_h = true
	elif velocity.x > 0:
		$Sprite2D.flip_h = false
		
	var directionY = Input.get_axis("move_up", "move_down")
	if directionY:
		velocity.y = directionY * SPEED
		$AnimationPlayer.play("walk")
	else:
		velocity.y = move_toward(velocity.y, 0, SPEED)
		#$AnimationPlayer.play("idle")

	move_and_slide()
