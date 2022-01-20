Quando('adicionar um produto no carrinho') do
    step "buscar pelo conteúdo \"#{"Faded Short Sleeve"}\""
    step "abrir o primeiro produto"
    step "verá os detalhes do produto"
    Cart.new.add_to_cart
end
  
Quando('realizar o checkout') do
    CreateAccount.new.create_new_account
    Cart.new.finish_cart
end

Então('verá a confirmação do pedido') do
    Cart.new.verify_order
end