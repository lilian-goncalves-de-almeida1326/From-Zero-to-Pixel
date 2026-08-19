extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var index = 0
var speakList = [
	["Y/N", "Expression","My name is Sam..."],
	["Samuel", "Expression","Samuel..."],
	["Samuel", "Expression","I never liked that name."],
	["Samuel", "Expression","It was my father's name..."],
	["Samuel", "Expression","My mother's desperate attempt to keep that piece of shit around..."],
	["Samuel", "Expression","How could I have forgotten that?"],
	["Samuel", "Expression","What is happening here?!"],

]



var speakList2 = [
	["Y/N", "Expression","Meu nome é Sam..."],
	["Samuel", "Expression","Samuel..."],
	["Samuel", "Expression","Eu nunca gostei dele"],
	["Samuel", "Expression","Era o nome do meu pai..."],
	["Samuel", "Expression","Uma tentativa desesperada da minha mãe de manter aquele homem de merda por perto..."],
	["Samuel", "Expression","Como eu pude esquecer disso?"],
	["Samuel", "Expression","O que está acontecendo aqui?!"],

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
		pass


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
		get_tree().change_scene("res://Scenes/Ending.tscn")
	pass # Replace with function body.
