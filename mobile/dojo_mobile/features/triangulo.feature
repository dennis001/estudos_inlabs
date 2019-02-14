#language: pt
#utf-8

Funcionalidade: teste mobile
	Eu como usuario do app
	Quero abrir o mesmo
	Para olhar os lados do triangulo

    @Equilatero
  Esquema do Cenario: teste mobile de triangulo 
    Dado que ativo o aplicativo 
    Quando digite todos os lados iguais do triangulo "<v1>" "<v2>" "<v3>"
    Então vejo a resposta de um triangulo "<mensagem>"
    
           Exemplos: 
            |  v1  |  v2   |  v3  |           mensagem          |
            |   3  |  3    |   3  |   O triângulo é Equilátero  |
            |   2  |  2    |   4  |   O triângulo é Isósceles   |
            |   4  |  1    |   9  |    O triângulo é Escaleno   |