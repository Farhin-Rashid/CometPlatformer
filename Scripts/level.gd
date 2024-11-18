extends Node2D

@onready var player : CharacterBody2D
@onready var killZone : Node2D = get_node("Kill Zone")
@onready var spawnPoint : Node2D = get_node("Respawn")
@onready var respawnLocation : Vector2

func _ready():
	player = get_node("Player")
	respawnLocation = player.global_position
	# print(player.global_position)
	# print(respawnLocation)

func _process(delta):
	if player.global_position.y > killZone.global_position.y:
		# print("dead")
		reset_player()
		
func reset_player():
	player.global_position = respawnLocation
	player.velocity = Vector2.ZERO


func _on_player_hit_spike():
	reset_player()
	pass # Replace with function body.
