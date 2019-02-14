#language: pt

Funcionalidade: Gerenciamento de Task
	Eu como usuario do site
	Desejo efetuar um cadastro no sistema

	Contexto: usuario efetua o login no site
		Dado que eu esteja logado no site
		Quando eu acessar a area de Crate Tasks

		@cadastro
	Cenario: Efetuar cadastro
		E cadastrar um usuario no sistema
		Então valido se o "resultado"cadastro foi efetuado com sucesso

		@editar
	Cenario: Editar task
		E editar usuario no sistema
		Entao valido se existe alteração nos dados cadastrados

		@deletar
	Cenario: Deletar task
		E devo deletar usuario no sistema
		Entao valido se o cadastro foi deletado com sucesso

