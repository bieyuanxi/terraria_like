extends Resource

class_name BowResTemplate

@export var meta: ItemMetaRes
@export var weapon: WeaponRes
@export var ammo: AmmoRes

func _init() -> void:
	weapon = WeaponRes.new()
