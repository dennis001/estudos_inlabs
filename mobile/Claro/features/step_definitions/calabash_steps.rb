require 'calabash-android/calabash_steps'

Dado(/^que acesse a tela de cadastro com um cpf válido$/) do
	wait_for_elements_exist(["* id:'action_bar'"], :timeout => 40)
	page(Home).menu_principal
end

Quando(/^efetuo o cadastro$/) do
    page(Home).preencher_cadastro
end

Então(/^verifico que o nome do usuário é exibido no menu$/) do
 # page(Home).verificar
  page(Home).verificar
end
