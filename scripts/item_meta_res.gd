extends Resource

class_name ItemMetaRes

enum RarityLevel {
	
}

@export var id: int
@export var name: String
@export_multiline var description: String
@export var max_stack_layers_num: int = 9999	# 最大堆叠层数
@export var is_consumable: bool	# 消耗品,使用后-1
@export var is_material: bool	# 材料,用于制作
@export var can_be_placed: bool	# 可以被放置
@export var speed_factor: float = 1.0	# 使用速度,挥舞速度
@export var rarity_level: int
