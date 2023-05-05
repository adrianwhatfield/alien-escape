extends Area2D

var open_door_texture = load("res://Assets/alien-door2.png")


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if PlayerVariables.has_key == true:
		$Sprite2D.texture = open_door_texture


func _on_body_entered(body):
	if PlayerVariables.has_key == true:
		print("you win")
