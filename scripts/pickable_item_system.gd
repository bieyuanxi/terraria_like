extends Node2D

class_name PickableItemSystem

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print("PickableItemSystem ready!")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func spawn_pickable_item(item_id: int, number: int) -> void:
	var new_item = preload("res://scenes/pickable_item.tscn")
	var item = new_item.instantiate()
	item.item_id = item_id
	item.num = number
	add_child(item)
	pass
