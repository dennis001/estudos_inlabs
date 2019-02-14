#language: pt
#utf-8

Funcionalidade: films
	Eu como sub sistema terceiro
	Quero buscar titulos de cada elemento
	Para que seja visualizado o status do mesmo

		@films
	Cenario: films
		Quando buscar um conteúdo pelo titulo
		Então valido a resposta da requisição para cada "titulo"

		@diretor
	Esquema do Cenário: Diretor e produtor
		Quando buscar um conteúdo de filmes
		Entao valido a resposta da requisição para o "<director>" George Lucas e o "<producer>" Rick MacCallum
				
				Exemplos:
				|director	 |producer		|
				|George Lucas|Rick McCallum	|