Dado(/^que eu acesso o web service$/) do
end

Quando(/^enviar um comentario em um post qualquer$/) do
  	@resposta = HTTParty.post("http://jsonplaceholder.typicode.com/comments/",
		:body => {"name" => "Teste de Criação de Comentário",
		    "email" => "teste@inmetrics.com.br",
		    "body" => "Testando a criação de um novo comentário."}.to_json,
		:headers => {'Content-Type'=> 'application/json'})
  	puts @resposta.code
end

Então(/^este sera visualizado$/) do
	expect(@resposta.code).to eq 201
	puts "Validando o recebimento de resposta 201"
	puts @resposta.body
end