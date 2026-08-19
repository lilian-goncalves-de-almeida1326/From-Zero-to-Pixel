extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var countDown = 3
var numbers = 7
var estilo = StyleBoxFlat.new()
# Called when the node enters the scene tree for the first time.
func _ready():
	changeColor()
	for panel in $paineis.get_children():
		panel.connect("gui_input", self, "_on_panel_gui_input", [panel])
		estilo.bg_color = Color.gray
		panel.add_stylebox_override("panel", estilo)
	testColorPanels()
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):

	pass
func testColorPanels():
	var testColorBool = true
	for panel in $paineis.get_children():
		var label = panel.get_children()[0]
		testColorBool = testColorBool and compareNumberToColor(label.text,panel.get_stylebox("panel").bg_color.to_html(true))

	print(testColorBool)
	pass
	
func compareNumberToColor(labelNumber,labelColor)-> bool:
	var testBool = false
	match int(labelNumber):
		0:
			if(str(labelColor).to_lower()=="ff000000"):
				testBool = true
			else:
				testBool = false
		1:
			if(str(labelColor).to_lower()=="ff000000"):
				testBool = true
			else:
				testBool = false
		2:
			if(str(labelColor).to_lower()=="ff000000"):
				testBool = true
			else:
				testBool = false
		3:
			if(str(labelColor).to_lower()=="ff000000"):
				testBool = true
			else:
				testBool = false
		4:
			if(str(labelColor).to_lower()=="ff000000"):
				testBool = true
			else:
				testBool = false
	return testBool 
	
func changeColor():
	match countDown:
		0:
			estilo = StyleBoxFlat.new()
			estilo.bg_color = Color.black
			$PanelNumber.add_stylebox_override("panel", estilo)

		1:
			estilo = StyleBoxFlat.new()
			estilo.bg_color = Color.blue
			$PanelNumber.add_stylebox_override("panel", estilo)
		2:
			estilo = StyleBoxFlat.new()
			estilo.bg_color = Color.green
			$PanelNumber.add_stylebox_override("panel", estilo)
		3:
			estilo = StyleBoxFlat.new()
			estilo.bg_color = Color.purple
			$PanelNumber.add_stylebox_override("panel", estilo)
		4:
			estilo = StyleBoxFlat.new()
			estilo.bg_color = Color.aliceblue
			$PanelNumber.add_stylebox_override("panel", estilo)


func changeTimerScreen():
	if(numbers <=0):
		countDown -= 1
		numbers =7
	else:
		numbers-=1
	if countDown <0:
		get_tree().change_scene("res://Scenes/CutScenesEnd.tscn")
	$TimerScreen.text = ":0"+str(numbers)
	$TimerScreen2.text = "0"+ str(countDown)
	

func _on_panel_gui_input(event, panel):
	if event is InputEventMouseButton and event.pressed:
		panel.add_stylebox_override("panel", estilo)


func _on_Panel_gui_input(event):
	if event is InputEventMouseButton:
		if event.button_index == BUTTON_LEFT and event.pressed:
			#$paineis/Panel.add_stylebox_override("panel", estilo)
			#print("Cliquei no painel!")
			pass
#		else:
#			var estilo = StyleBoxFlat.new()
#			estilo.bg_color = Color.slategray
#			$Panel.add_stylebox_override("panel", estilo)
#			print("Cliquei no painel!")



func _on_Timer_timeout():
	changeTimerScreen()
	changeColor()

	pass # Replace with function body.


