extends Node2D


func _on_quit_pressed() -> void:
	get_tree().quit()


func _on_play_pressed() -> void:
	get_tree().change_scene_to_file("res://world.tscn")


func _on_level_select_pressed() -> void:
	get_tree().change_scene_to_file("res://level_select.tscn")



func _on_options_pressed() -> void:
	get_tree().change_scene_to_file("res://options_menu.tscn")
