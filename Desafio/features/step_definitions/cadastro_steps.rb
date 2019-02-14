Dado(/^que eu esteja logado no site$/) do
  PageHome.new.load
  PageHome.new.login_test('will','will')
  PageHome.new.login_button.click
end

Quando(/^eu acessar a area de Crate Tasks$/) do
 @cadastro = PageCadastro.new
 @cadastro.create_button.hover
    @cadastro.task_button.click
end

Quando(/^cadastrar um usuario no sistema$/) do
  @cadastro.preencher_cadastro('Jonas','teste')
  select('Completed', :from => 'status')
  select('Medium', :from => 'priority')
  @cadastro.criarTarefaBotao.last.click
 end

Então(/^valido se o "([^"]*)"cadastro foi efetuado com sucesso$/) do |resultado|
  expect(PageCadastro.new.resultado.text)
end

Quando(/^editar usuario no sistema$/) do
  @editar = PageEditar.new
  @editar.pesquisar.click
  PageEditar.new.buscar('Jonas')
  @editar.button.click
  @editar.wait_for_button
  #@editar.menu.last.click
  @editar.link.click
  @editar.actions.click
  @editar.wait_for_actions
  @editar.edit.click
  select('Pending Input', :from => 'status')
  select('08', :from => 'date_due_hours')
  select('30', :from => 'date_due_minutes')
  @editar.contact('Jeremias')
  @cadastro.criarTarefaBotao.last.click
 end

Entao(/^valido se existe alteração nos dados cadastrados$/) do
  expect(PageCadastro.new.resultado.text)
end

Quando(/^devo deletar usuario no sistema$/) do
  @delete = PageDeletar.new
  @delete.pesquisar.click
  @delete.buscar('Jonas')
  @delete.button.click
  @delete.wait_for_button
  #@delete.menu.last.click
  @delete.link.click
  @delete.actions.click
  @delete.wait_for_actions
  @delete.delete_button.click
  page.driver.browser.switch_to.alert.accept
end

Entao(/^valido se o cadastro foi deletado com sucesso$/) do
	expect(PageDeletar.new.verify.text)
end
