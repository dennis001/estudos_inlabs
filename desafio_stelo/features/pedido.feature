#language: pt
#utf-8

Funcionalidade: Poc Stelo
	Eu como Team agile test Inmetrics
	Quero automatizar o fluxo de compra Vtex
	Para demonstrar minhas skills de automação 

	Cenario: Fluxo de compra Vtex
		Dado que eu faça um pedido de compra via webservices
		E receba a confirmação do pedido efetuado com sucessso
		Quando eu acessar a area de venda da minha loja
		E realizo uma busca com o numero da venda
		Então verifico em detalhes do pedido o numero do pedido