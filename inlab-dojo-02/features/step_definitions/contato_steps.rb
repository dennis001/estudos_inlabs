Dado(/^que eu esteja na home do site DemoQA$/) do
	PageHome.new.load
end

Quando(/^eu clico em 'Contact'$/) do
	PageHome.new.contato.click
end

Quando(/^envio um formulario de contato preenchido$/) do
	@formulario = PageFormulario.new
	@formulario.prencher_formulario('Paulo','paulo2017@gmail.com','teste','teste01')
	@formulario.enter.click
end

Entao(/^visualizo a mensagem "([^"]*)"$/) do |resultado|
	expect(PageFormulario.new.resultado.text).to eq(resultado)
end

Dado(/^que eu esteja na home do site DemoQA e clico em 'Contact'$/) do
	  PageHome.new.load
	  PageHome.new.contato.click
end

Quando(/^efetiva um cadastro com "([^"]*)","([^"]*)","([^"]*)","([^"]*)"$/) do |nome, email, subject, message|
	PageFormulario.new.prencher_formulario(nome,email,subject,message)
	PageFormulario.new.enter.click
end

Entao(/^visualizo a mensagem de insucesso "([^"]*)" e a mensagem "([^"]*)" abaixo do campo correspondente$/) do |resultado_negativo, mensagem_campo|
  expect(PageFormulario.new.resultado_negativo.text).to eq(resultado_negativo)
 # expect(PageFormulario.new.mensagem_campo.text).to eq(mensagem_campo)
end



