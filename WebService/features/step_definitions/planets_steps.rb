Quando(/^buscar um conteúdo pelo "([^"]*)"$/) do |arg1|
   @response = HTTParty.get("http://swapi.co/api/planets")
end

Então(/^valido a resposta da requisição para cada$/) do
  	puts @response['count']
 	puts "validando o recebimento do código 200" 
  	#binding.pry
  	expect(@response.code).to eq 200
 
end