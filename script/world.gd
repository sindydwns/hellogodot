extends Node2D

@onready var tile_map : TileMap = $TileMap

func _ready():
	pass


func _input(event):
	if Input.is_action_pressed("click"):
		var pos = get_global_mouse_position()
		var tile_pos = tile_map.local_to_map(pos)
		# tile_map.set_cell(1, tile_pos, 1, Vector2i(0, 0));
		tile_map.erase_cell(1, tile_pos)

func _process(delta):
	pass
