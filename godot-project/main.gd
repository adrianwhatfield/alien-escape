extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$"UI/Progress Bar".value = PlayerVariables.health_current
	if PlayerVariables.is_dead == true:
		$"UI/Death UI".visible = true


func _on_button_pressed():
	get_tree().change_scene_to_file("res://menu.tscn")
