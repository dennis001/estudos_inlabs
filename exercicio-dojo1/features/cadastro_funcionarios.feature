#language: pt
#utf-8

Funcionalidade: Registro de funcionarios
	Eu como funcinário do RH
	Quero acessar a pagina de Add Employee 
	Para registrar novos funcionarios no sistema

@cadastro
Cenario: Cadastro de funcionarios
	Dado que esteja na logado na pagina
	Quando acessar a area Add Employee
	Entao devo cadastrar o funcionários
	
@editar	
Cenario: Editar dados dos funcionarios
	Dado que esteja na logado na pagina
	Quando abrir o campo na pagina Employee List
	Entao editar os dados dos funcionários

