
Quando(/^eu crio um book$/) do  
	@response = Books.new.create_book
	@response.body
end  

Então(/^valido a mensagem de retorno (\d+)$/) do |arg1|                 
	expect(@response.code).to eq 200
	puts "Validando o recebimento da resposta 200"
end                                                                            
                                                                             
Dado(/^que obtenha a lista de autores$/) do                             
  	@response = Books.new.obter(2)
  	print @response
end                                                                            
                                                                               
Quando(/^altero um autor da lista$/) do                                  
  	@response = Books.new.edit_book
 	@response.body
end 

Então(/^valido a mensagem do retorno (\d+)$/) do |arg1|
  	expect(@response.code).to eq 200
  	puts "Validando o recebimento da resposta 200"
end

                                                                         