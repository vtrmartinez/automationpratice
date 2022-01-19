Quando('eu adicionar um produto no carrinho') do
    step "eu buscar pelo conteúdo \"#{"Faded Short Sleeve"}\""
    step "abrir o primeiro produto"
    step "verei os detalhes do produto"
end
  
Quando('realizar o checkout') do
    pending # Write code here that turns the phrase above into concrete actions
end

Então('verei a confirmação do pedido') do
    pending # Write code here that turns the phrase above into concrete actions
end