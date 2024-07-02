extends Resource

class_name WeaponRes

enum WeaponType {
	BOW,	# 弓
	WAND,	# 魔杖
	SWORD,	# 剑
	GUN,	# 枪
}

enum DamageType {
	MELEE,	# 近战
	MAGIC,	# 魔法
	REMOTE,	# 远程
}

@export var damage: float
@export var weapon_type: WeaponType
@export var damage_type: DamageType
@export var penetration: float = 0	# 穿透
