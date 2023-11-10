extends Control

@onready var score_texture = %Score/ScoreTexture
@onready var score_label = %Score/ScoreLabel
@onready var time = $Score/Time

func _process(_delta):
	# Set the score label text to the score variable in game maanger script
	score_label.text = "x %d" % GameManager.score
	time.text = "Tiempo transcurrido: %d" %  (GameManager.time/1000)
