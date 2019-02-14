class PageFormulario < SitePrism::Page
	element :seu_nome, "input[name='your-name']"
	element :seu_email, "input[name='your-email']"
	element :assunto_qualquer, "input[name='your-subject']"
	element :mensagem, "textarea[name='your-message']"
	element :enter, "input[class='wpcf7-form-control wpcf7-submit']"
	element :resultado, "div[class='wpcf7-response-output wpcf7-display-none wpcf7-mail-sent-ok']"
	element :resultado_negativo, "div[class='wpcf7-response-output wpcf7-display-none wpcf7-validation-errors']"
	element :mensagem_campo, "span[class='wpcf7-not-valid-tip']" 


	def prencher_formulario(nome,email,subject,message)
		seu_nome.set(nome)
		seu_email.set(email)
		assunto_qualquer.set(subject)
		mensagem.set(message)
	end

end