if next = 0{
	with ob_diolog_parunt{
		key_next = vk_up or vk_down or vk_right or vk_left
	}
	with Player_obj{
		redy = false
	}
	with Blobybob_bad_obj{
		redy = false
	}
	with movingGround{
		redy = false
	}
}
if next = 1{
	with ob_diolog_parunt{
		key_next = vk_space
	}
}
if next = 2{
	with ob_diolog_parunt{
		key_next = ord("D") or ord("W") or ord("A") or ord("S")
	}
	with Player_obj{
		redy = true
	}
	with Blobybob_bad_obj{
		redy = true
	}
	with movingGround{
		redy = true
	}
	instance_destroy()
}
if next = 3{
	with ob_diolog_parunt{
		key_next = ord("D") or ord("W") or ord("A") or ord("S")
	}
}

