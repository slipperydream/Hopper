extends Area2D

class_name Goal
signal goal_reached

@export var goal_number : int = 0
var goal_occupied : bool = false

func _on_area_entered(area):
	if goal_occupied == false:
		emit_signal("goal_reached")

func _on_goal_reached():
	$Sprite2D.visible = true
	
func reset():
	$Sprite2D.visible = false
	goal_occupied = false
