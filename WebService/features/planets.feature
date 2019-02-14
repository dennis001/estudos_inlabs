#language: pt
#utf-8

Funcionalidade: planets
	Eu como sub sistema terceiro
	Quero buscar titulos de cada elemento
	Para que seja visualizado o status do mesmo

		@planets
	Cenario: planets
		Quando buscar um conteúdo pelo "count"
		Então valido a resposta da requisição para cada
