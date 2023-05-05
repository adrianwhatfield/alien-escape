extends Node

var is_dead = false
var has_key = false
var health_total = 100
var health_current = 100

func _process(delta):
	if health_current <= 0:
		is_dead = true
