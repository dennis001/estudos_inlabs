class PageCadastro < SitePrism::Page
	element :create_button, "li[id='quickcreatetop']"
	element :task_button, "a[href='index.php?module=Tasks&action=EditView&return_module=Tasks&return_action=DetailView']"
	element :usuario_nome, "input[name='name']"
	element :descricao, "textarea[name='description']"
	element :resultado, "h2[class='module-title-text']"
	elements :criarTarefaBotao, '#SAVE'
	
		
		def preencher_cadastro(nome,descrição)
			usuario_nome.set(nome)
			descricao.set(descrição)
		end
end