#language: pt
#utf-8

Funcionalidade: Automation Pratice
	Eu como cliente do Automation Pratice
	Quero procurar um produto
	Para comprá-lo

Cenario: Encontrar um produto
Dado que eu esteja na home do site AutomationPratice
Quando eu buscar pelo conteúdo "Faded Short Sleeve"
E abrir o primeiro produto
Então verei os detalhes do produto
