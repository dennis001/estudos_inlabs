Dado(/^que esteja na página de pesquisa$/) do
end

Quando(/^busco o endereço$/) do
  response = HTTParty.get("http://correiosapi.apphb.com/cep/06460000")
  binding.pry

  puts response["tipoDeLogradouro"] + " " + response["logradouro"] + ", "
   	 + response["cidade"] + " - " + response["estado"]

end

Então(/^visualizo de forma ordenada$/) do
  pending # Write code here that turns the phrase above into concrete actions
end