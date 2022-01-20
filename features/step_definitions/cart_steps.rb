Quando('eu adicionar um produto no carrinho') do
    step "eu buscar pelo conteúdo \"#{"Faded Short Sleeve"}\""
    step "abrir o primeiro produto"
    step "verei os detalhes do produto"
    Cart.new.add_to_cart
end
  
Quando('realizar o checkout') do
    CreateAccount.new.create_new_account
    Cart.new.finish_cart
end

Então('verei a confirmação do pedido') do
    Cart.new.verify_order
end