extends Resource
# 弹药
class_name AmmoRes

enum AmmoType {
	ARROW,	# 箭
	ROCKET,	# 火箭
	BULLET,	# 子弹
	FLARE,	# 照明弹
	SNOWBALL, 	# 雪球
}

@export var damage: float
@export var ammo_type: AmmoType
