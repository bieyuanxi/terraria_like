extends Node2D

@onready var tile_map_layer: TileMapLayer = $TileMapLayer

var mouse_pos: Vector2i = Vector2i(0, 0)
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#var a = ItemTemplate.new()
	#a.id = 1
	#print(a.id)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var cur_mouse_pos = tile_map_layer.local_to_map(tile_map_layer.get_local_mouse_position())
	if mouse_pos != cur_mouse_pos:
		mouse_pos = cur_mouse_pos
		var tile_data = get_clicked_tile_power()
		if tile_data:
			print(tile_data.get_custom_data("item_id"))

	pass

# may return null, check first
func get_clicked_tile_power() -> TileData:
	var clicked_cell = tile_map_layer.local_to_map(tile_map_layer.get_local_mouse_position())
	return tile_map_layer.get_cell_tile_data(clicked_cell)
	
	
func  _input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("left_mouse_click"):
		var cur_mouse_pos = tile_map_layer.local_to_map(tile_map_layer.get_local_mouse_position())
		
		if not tile_map_layer.get_cell_tile_data(cur_mouse_pos):
			return
		
		
		var surrounding_cells = tile_map_layer.get_surrounding_cells(cur_mouse_pos)
		tile_map_layer.erase_cell(cur_mouse_pos)
		print(surrounding_cells)
		tile_map_layer.set_cells_terrain_connect(surrounding_cells, 0, 0)

@onready var pickable_item_system: PickableItemSystem = $PickableItemSystem

func _on_timer_timeout() -> void:
	var v = randi() % 2
	var id = 1
	if v == 0:
		id = 438
	elif v == 1:
		id = 575
	
	print(v)
	pickable_item_system.spawn_pickable_item(id, 100)
	pass # Replace with function body.
