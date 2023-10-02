extends Panel

# 부모의 크기가 바뀔 때마다 이 함수가 호출됩니다.
func _notification(what):
	if what == NOTIFICATION_RESIZED:
		adjust_to_square()

# 부모 Control의 크기에 따라 자식 Control의 크기를 조절하는 함수
func adjust_to_square():
	var parent_size = get_parent().size
	var min_dimension = min(parent_size.x, parent_size.y)
	set_size(Vector2(min_dimension, min_dimension))
