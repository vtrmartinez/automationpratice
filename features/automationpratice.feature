#language: pt
#utf-8

Funcionalidade: Automation Pratice
	Eu como cliente do Automation Pratice
	Quero procurar um produto
	Para comprá-lo

@search
Cenário: Encontrar um produto
    Dado que o usuário esteja na home do site AutomationPratice
    Quando buscar pelo conteúdo "Faded Short Sleeve"
    E abrir o primeiro produto
    Então verá os detalhes do produto

@cart
Cenário: Realizar uma compra
    Dado que o usuário esteja na home do site AutomationPratice
    Quando adicionar um produto no carrinho
    E realizar o checkout
    Então verá a confirmação do pedido
