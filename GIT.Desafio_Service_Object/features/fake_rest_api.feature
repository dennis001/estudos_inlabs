#language: pt
#utf-8

Funcionalidade: Manager Book
	Eu Como aplicação WEB	
	Quero realizar Manuteções na API BOOK
	Para sua seus dados em meu front-end

@create
Cenário: Create Book
	Quando eu crio um book 
	Então valido a mensagem de retorno 200

@edit
Cenário: Edit Autores
	Dado que obtenha a lista de autores
	Quando altero um autor da lista
	Então valido a mensagem do retorno 200

