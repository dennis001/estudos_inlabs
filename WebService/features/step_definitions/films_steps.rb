
Quando(/^buscar um conteúdo pelo titulo$/) do
  @response = HTTParty.get("http://swapi.co/api/films")
end

Então(/^valido a resposta da requisição para cada "([^"]*)"$/) do |titulo|
	puts "validando o recebimento do código 200" 
  	#binding.pry
  	expect(@response.code).to eq 200


  		@response['results'].each do |films|
  			print films['title'] + " - "
  			print films['director'] + ", "
  			print films['producer']
  			print "\n"
  		end

end

Quando(/^buscar um conteúdo de filmes$/) do
	@response = HTTParty.get("http://swapi.co/api/films")
end

Entao(/^valido a resposta da requisição para o "([^"]*)" George Lucas e o "([^"]*)" Rick MacCallum$/) do |director, producer|
  puts "validando o recebimento do código 200" 
  	expect(@response.code).to eq 200
  		@response['results'].each do |films|
  			if director == films['director'] && films['producer'].include?(producer)
	  			puts  "\n" + films['title']
			end
		end

end