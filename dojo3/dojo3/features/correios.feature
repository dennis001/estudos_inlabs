#language: pt
#utf-8


Funcionalidade: Correios
     Eu como sub sistema terceiro
     Quero buscar um endereço pelo correio
     Para localizar a unidade da Inmetrics Barueri

    @Correios 
    Cenário: Buscar CEP da Inmetrics
    	Dado que esteja na página de pesquisa
    	Quando busco o endereço
    	Então visualizo de forma ordenada