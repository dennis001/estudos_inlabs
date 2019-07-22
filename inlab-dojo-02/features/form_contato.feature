#language: pt

Funcionalidade: Formulário de Contato
	Eu como usuario do site
	Desejo enviar um formulario de contato
	Para entrar em contato com a empresa

	Cenario: Enviar formulario de contato
		Dado que eu esteja na home do site DemoQA
		Quando eu clico em 'Contact'
		E envio um formulario de contato preenchido
		Entao visualizo a mensagem "Your message was sent successfully. Thanks."
	

	@formulario
	Esquema do Cenário: Enviar formulario de contato Inválido
		Dado que eu esteja na home do site DemoQA e clico em 'Contact'
		Quando efetiva um cadastro com "<nome>","<email>","<subject>","<message>"
		Entao visualizo a mensagem de insucesso "Validation errors occurred. Please confirm the fields and submit it again." e a mensagem "<resultado>" abaixo do campo correspondente
		#E a mensagem "<resultado>" abaixo do campo correspondente
		#E a mensagem "<Email_invalid>" abaixo do campo correspondente

			Exemplos: 
				|	nome		 |		email		  |	subject |	message		|	resultado	       |	
				| 		         | jose2017@gmail.com 		  | teste 	|   teste 		|Please fill the require field.|
				|	Jose	     	 | 			          | teste	|   teste 		|Email address seems invalid.  |
