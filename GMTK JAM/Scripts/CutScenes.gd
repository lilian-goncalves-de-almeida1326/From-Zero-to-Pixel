extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var index = 0
var speakList = [
	["Y/N", "Expression","What are you?"],
	["Monster", "Talk","Something that has been following you for quite some time..."],
	["Monster", "Talk","You drank until you passed out again. This time, time itself demanded its price."],
	["Monster", "Talk","And I came to take you."],
	["Y/N", "Expression","Take me?"],
	["Monster", "Talk","We're in a kind of limbo. There's no escape, so don't even try to run."],
	["Y/N", "Expression","Then why didn't you just take me right away?"],
	["Monster", "Talk","Because I have a proposal."],
	["Monster", "Talk","I'm bored."],
	["Monster", "Talk","Let's play a game!"],
	["Y/N", "Expression","And what do I get out of it?"],
	["Monster", "Talk","I'll grant you one wish."],
	["Monster", "Talk","But only if I like your request, of course."],
	["Y/N", "Expression","Okay...?"],
]



var speakList2 = [
	["Y/N", "Expression","O que é você?"],
	["Monster", "Talk","Algo que vem te acompanhando a um tempo..."],
	["Monster", "Talk","Você bebeu até cair de novo. Desta vez, o tempo cobrou seu preço."],
	["Monster", "Talk","E eu vim te buscar."],
	["Y/N", "Expression","Me buscar?"],
	["Monster", "Talk","Estamos em uma espécie de limbo. Não há escapatória, então nem tente fugir."],
	["Y/N", "Expression","Então por que não me levou de uma vez?"],
	["Monster", "Talk","Porque tenho uma proposta."],
	["Monster", "Talk","Estou entediado. "],
	["Monster", "Talk","Vamos jogar um jogo!"],
	["Y/N", "Expression","E o que eu ganho com isso?"],
	["Monster", "Talk","Eu realizo um desejo seu."],
	["Monster", "Talk","Mas apenas se eu gostar do pedido, é claro."],
	["Y/N", "Expression","Ok...?"],
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
	else:
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
		get_tree().change_scene("res://Scenes/Plataforma.tscn")
	pass # Replace with function body.
