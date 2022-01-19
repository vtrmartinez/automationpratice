Dado("que eu esteja na home do site AutomationPratice") do
    Home.new.url
end
  
Quando("eu buscar pelo conteúdo {string}") do |content_name|
    Search.new.search_content(content_name)
end

Quando("abrir o primeiro produto") do
    pending # Write code here that turns the phrase above into concrete actions
end

Então("verei os detalhes do produto") do
    pending # Write code here that turns the phrase above into concrete actions
end