# 🌌 From Zero to Pixel

**From Zero to Pixel** é um jogo independente desenvolvido durante uma **GMTK Game Jam 2026** com duração de **4 dias**, combinando elementos de **Visual Novel** e **Puzzle** em uma experiência curta de suspense e narrativa.

O projeto foi desenvolvido de forma solo, abrangendo **programação, game design, pixel art, animação e composição musical**.

> Este repositório também funciona como um exercício de Game Design: após concluir a disciplina de Conceitos Básicos do Game Design, da Residência de Games da IFPB, estou revisitando o projeto para reconstruir e documentar seu GDD a partir dos conceitos estudados.



## 🕹️ Sobre o jogo

Após sua morte, o protagonista desperta em um lugar desconhecido e encontra uma entidade misteriosa que lhe oferece a possibilidade de realizar um último desejo.

Para isso, ele precisa enfrentar um desafio.

A principal mecânica do jogo é um puzzle baseado em **pintura de pixels e contagem regressiva**. O jogador deve identificar os pixels correspondentes ao número exibido pelo cronômetro e interagir com eles antes que o tempo termine.

A mecânica foi pensada para criar uma sensação de **urgência**, enquanto a narrativa estabelece o contexto para o desafio.

 

## 🎮 Conceito de Gameplay

O jogo combina dois momentos principais:

**Narrativa**

* Diálogos entre os personagens;
* Apresentação gradual da situação do protagonista;
* Construção da atmosfera de suspense.

**Puzzle**

* Grade composta por pixels;
* Identificação dos elementos através de números e cores;
* Cronômetro regressivo;
* Interação rápida com os pixels correspondentes.

### Core Loop

```text
Ler a narrativa
      ↓
Encontrar a entidade
      ↓
Receber o desafio
      ↓
Resolver o puzzle
      ↓
Avançar na narrativa
```

 

## 🎨 Direção de Arte

O projeto utiliza **pixel art** em base 32x32 como principal linguagem visual.

A direção visual busca transmitir uma atmosfera estranha e melancólica, utilizando uma paleta com tons amarelados, acinzentados e pouco saturados.

Além dos personagens, foram produzidas animações e cenários próprios para o projeto.

Durante a Game Jam, parte significativa do tempo de desenvolvimento foi dedicada à produção e ao polimento da arte e das animações.

 

## 🎵 Música e Atmosfera

A trilha sonora foi composta especificamente para o projeto, utilizando uma estética inspirada em música **8-bit**.

A música foi utilizada para reforçar a atmosfera de suspense, especialmente durante a aparição da entidade e a transição para o desafio do puzzle.

 

## 🧩 Design do Puzzle

O conceito inicial do puzzle utiliza uma relação entre **números, cores e tempo**.
Um protótipo de baixa fidelidade foi criado, onde se podia pintar os pixels, mas que não dava uma visão completa da funcionalidade inteira do puzzle como um todo.

O cronômetro determina o número que deve ser identificado pelo jogador, enquanto os pixels correspondentes precisam ser selecionados dentro do período disponível.

Ainda que apenas um puzzle tenha sido adicionado, a mecânica foi pensada para evoluir gradativamente, mantendo o tempo para todos os números, mas aumentando a quantidade de pixels que deve ser marcada pelo jogador, com a dificuldade evoluindo ao longo do tempo.

A utilização conjunta de número e cor também evita que a identificação dos elementos dependa exclusivamente da percepção das cores para pessoas daltônicas.

### Design planejado × implementação

Nem todas as ideias planejadas para a mecânica foram implementadas durante a Game Jam.

O desenvolvimento aconteceu em apenas quatro dias e exigiu decisões constantes de priorização. Por isso, o projeto final representa uma versão reduzida do conceito original.

O objetivo principal passou a ser entregar uma experiência funcional dentro do prazo, priorizando a integração entre **narrativa, arte, animação, música e a mecânica principal**.

 

## ⏱️ Desenvolvimento em 4 dias

O prazo limitado foi uma das principais características do projeto.

Durante o desenvolvimento, foi necessário escolher quais elementos receberiam prioridade e quais poderiam ser deixados para uma versão futura.

### O que foi priorizado

* Implementação da estrutura básica do jogo;
* Narrativa e diálogos;
* Produção da pixel art;
* Animação dos personagens;
* Criação da atmosfera visual;
* Música original;
* Implementação inicial do puzzle.

### O que ficou fora do escopo final

Algumas funcionalidades planejadas não chegaram a ser completamente desenvolvidas ou balanceadas dentro do prazo.

Isso inclui principalmente a expansão do puzzle e sua progressão de dificuldade.

Em vez de considerar essas limitações apenas como problemas do projeto, elas fazem parte da análise de **gestão de escopo** realizada neste GDD.

 
## ⚙️ Modificações
A gameplay do jogo sofreu grandes alterações, principalmente ao final do prazo. Originalmente:

```text
Cutscene
      ↓
Resolver puzzle tutorial de 16x16 pixels
      ↓
Ler a narrativa
      ↓
Encontrar a entidade
      ↓
Receber o desafio
      ↓
Resolver o puzzle um novo puzzle com 32x32 pixels
      ↓
Avançar na narrativa
      ↓
Repetição com puzzles mais complexos
```
Ao fazer os primeiros testes da interface com a arte de 16x16 , observou-se como o projeto era desconfortável se escalonado e novas artes, mais simples foram criadas, iniciando a game play com 8x8, seguindo para 16x16, 20x20 e 24x24, que foram desenhados, mas não implementados dentro do jogo.

A narrativa e o roteiro foi alterado para manter o sentido da história.

 

## 🔎 Pós-mortem

Uma das principais conclusões da Game Jam foi a importância de testar a mecânica principal **antes de investir grande quantidade de tempo no polimento visual**.

A produção de arte, animações e música avançou bastante durante os quatro dias, enquanto o sistema de puzzle teve menos tempo disponível para testes e balanceamento.

Uma abordagem que poderia melhorar uma futura versão seria criar primeiro um **protótipo extremamente simples da mecânica completa**, utilizando formas e elementos provisórios, e somente depois desenvolver a arte definitiva.

Isso permitiria testar:

* Se a mecânica é compreensível;
* Se o tempo disponível é adequado;
* Se o desafio é divertido;
* Se a dificuldade aumenta de maneira satisfatória;
* Se a interação é confortável.

 

## 📚 GDD

O projeto recebeu um documento, focando apenas em narrar a gameplay e o roteiro, sem aprofundamento. Como exercício da disciplina de **Conceitos Básicos do Game Design**, o projeto está sendo revisitado para produzir um novo Game Design Document.

O documento busca separar três aspectos do desenvolvimento:

**O que foi pensado**

As ideias e objetivos de design considerados durante a concepção do jogo.

**O que foi implementado**

As mecânicas e sistemas que realmente chegaram à versão produzida durante a Game Jam.

**O que foi cortado ou modificado**

Decisões tomadas durante o desenvolvimento para adaptar o projeto ao prazo de quatro dias.

📑 **[Abrir GDD](docs/GDD.md)**

 

## ♿ Acessibilidade

A mecânica utiliza **números e cores como formas complementares de identificação**.

Isso significa que a informação necessária para compreender o puzzle não depende exclusivamente da diferenciação entre cores.

A acessibilidade também é considerada como uma oportunidade de melhoria para versões futuras do projeto. Novos recursos poderão ser avaliados a partir de testes com diferentes perfis de jogadores.

📑 **[Abrir documentação de acessibilidade](docs/ACCESSIBILITY.md)**

 

## 🛠️ Tecnologias

* **Engine:** Godot 3
* **Programação:** GDScript
* **Arte:** Pixel Art 32x32
* **Animação:** Frame-by-frame
* **Áudio:** Música original em estilo 8-bit

 

## 👤 Desenvolvimento

Projeto desenvolvido individualmente durante a **GMTK Game Jam 2026** de 4 dias, no itch.io.

**Funções desempenhadas:**

* Game Design
* Programação
* Pixel Art
* UI
* Animação
* Composição musical
* Roteiro

 

## 📂 Estrutura da documentação

```text
From-Zero-to-Pixel/
│
├── README.md
│
├── docs/
│   ├── GDD.md
│   ├── ACCESSIBILITY.md
│   └── POSTMORTEM.md
│
└── GMTK JAM/
    └── Arquivos do jogo
```

 

## 🚧 Estado do projeto

**Game Jam Build — concluída**

Esta versão corresponde ao escopo desenvolvido durante a Game Jam.

O projeto pode ser revisitado futuramente para experimentar novas mecânicas, melhorar o balanceamento do puzzle e expandir sua narrativa.

 

## 📖 Sobre este repositório

Este projeto não é apenas um registro da Game Jam.

Ele também representa um exercício de **análise e documentação de Game Design**, revisitando uma experiência prática de desenvolvimento depois do estudo dos fundamentos da área.

A proposta é observar como as decisões tomadas sob uma restrição de quatro dias podem ser analisadas utilizando conceitos de Game Design e como o projeto poderia ser desenvolvido de maneira diferente em uma nova versão.

