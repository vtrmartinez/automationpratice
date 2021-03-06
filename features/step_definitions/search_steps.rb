Quando("buscar pelo conteúdo {string}") do |content_name|
    @content_name = content_name
    Search.new.search_content(@content_name)
end

Quando("abrir o primeiro produto") do
    Search.new.click_on_first_product(@content_name)
end

Então("verá os detalhes do produto") do
    Search.new.verify_product_details(@content_name)
end