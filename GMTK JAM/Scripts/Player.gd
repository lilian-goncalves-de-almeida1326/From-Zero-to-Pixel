extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


var speed = 300

func _physics_process(delta):
	var velocity = Vector2.ZERO
	
	if Input.is_action_pressed("ui_right"):
		velocity.x += 1
		$KinematicBody2D/player.flip_h = false
		$KinematicBody2D/AnimationPlayer.play("walk")
	elif Input.is_action_pressed("ui_left"):
		velocity.x -= 1
		$KinematicBody2D/player.flip_h = true
		$KinematicBody2D/AnimationPlayer.play("walk")
	else:
		$KinematicBody2D/AnimationPlayer.play("idle")
	velocity = velocity.normalized() * speed
	velocity = $KinematicBody2D.move_and_slide(velocity)
