#language: pt
#utf-8

Funcionalidade: Criação de Comentarios
	Eu como sistema front-end
	Quero postar um comentario
	Para que seja visualizado no site

	Cenario: Criar comentarios
		Dado que eu acesso o web service
		Quando enviar um comentario em um post qualquer
		Então este sera visualizado