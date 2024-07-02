extends RigidBody2D

@export var item_id: int
@export var item_name: String
@export var num: int

@onready var sprite_2d: Sprite2D = $Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var name = "res://scenes/item_{id}.tscn"
	var new_item: PackedScene = load(name.format({ "id": item_id }))
	add_child(new_item.instantiate())
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_mouse_entered() -> void:
	print("item_name: " + item_name)
	#print(item_name)
	pass # Replace with function body.
