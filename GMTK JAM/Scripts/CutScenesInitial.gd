extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var index = 0
var speakList = [
["Y/N", "Expression","What happens?"],
["Y/N", "Expression","Ow... my head..."],
["Y/N", "Expression","I can't remember... my name..."],
["...", "Talk", "Why did you drink until you passed out in your own vomit for the fifth time this week?"],
["Y/N", "Expression","What?"],
]

var speakList2 = [
	["Y/N", "Expression","O que acontece?"],
	["Y/N", "Expression","Ai... minha cabeça..."],
	["Y/N", "Expression","Não lembro... meu nome..."],
	["...", "Talk", "Por que você bebeu até cair no próprio vômito pela quinta vez esta semana."],
	["Y/N", "Expression","Que?"],
]


#var textTest = 	"3$Expression$Speak%4$Expression$Speak%5$Expression$Speak%6$Expression$Speak"
var textTest = 	""

# Called when the node enters the scene tree for the first time.
func _ready():
	changeLabelName(speakList[index][0])	
	changeExpression(speakList[index][1], speakList[index][0])
	changeRichText(speakList[index][2])
	index+=1
	#createTexts()
	#createListSpeaks(textTest)
	#print(speakList)
	#print(textTest)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func createListSpeaks(text):
	text = text.substr(0, text.length()-1)
	var fisrtList = text.split("%")
	for t in fisrtList:
		speakList.append(t.split("$"))

func createTexts():
	for t in speakList:
		var firstText = t[0] +"$"+ t[1]  +"$"+	t[2]
		textTest+= firstText+"%"


func changeExpression(newExpression, name):
	if name == "Monster":
		match newExpression:
			"Talk":
				$Monster/AnimatedSprite.play("Talk")
	elif name == "Samuel":
		$Monster/AnimatedSprite.play("Idle")


func changeRichText(newText):
	$Panel/RichTextLabel.text = newText
	
func changeLabelName(newName):
	$Panel2/Label.text = newName

func changeCharacter(name):
	match name:
		"Monster":
			$Monster.visible = true


func _on_BtnNextText_pressed():
	if speakList.size() > index:
		changeLabelName(speakList[index][0])	
		
		changeExpression(speakList[index][1], speakList[index][0])
		
		changeRichText(speakList[index][2])

		#changeCharacter(speakList[index][0])
	
		index+=1
	else:
		get_tree().change_scene("res://Scenes/CutScenes.tscn")
	pass # Replace with function body.
