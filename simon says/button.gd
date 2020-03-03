extends AnimatedSprite

signal pressed
signal mouseover
signal mouseleft
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Area2D_input_event(viewport, event, shape_idx):
#	print(event.as_text())#for finding out what input event to handled
	if event is InputEventMouseButton and event.button_index == BUTTON_LEFT and event.is_pressed():
		emit_signal("pressed")
	

func change_sprite(spritenumber):
	frame=spritenumber


func _on_Area2D_mouse_entered():
	emit_signal("mouseover")


func _on_Area2D_mouse_exited():
	emit_signal("mouseleft")
