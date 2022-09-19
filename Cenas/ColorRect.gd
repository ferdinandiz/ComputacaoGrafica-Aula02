extends ColorRect
var x = 0 
var y = 0

func _ready():
	print("Hello!!!")
	
func _physics_process(delta):
	#if Input.is_action_just_pressed("espaço"):
	if Input.get_action_raw_strength("cima"):
		y = y-1
		update()
	if Input.get_action_raw_strength("baixo"):
		y = y+1
		update()
	if Input.get_action_raw_strength("esquerda"):
		x = x-1
		update()
	if Input.get_action_raw_strength("direita"):
		x = x+1
		update()
	pass

func _draw():
	draw_circle(Vector2(40+x,40+y),5,Color.darkred)
	pass
