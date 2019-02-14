class PageHome < SitePrism::Page
	set_url "https://demo.suiteondemand.com"

		element :usuario, "input[name='user_name']"
		element :password, "input[name='user_password']"
		element :login_button, "input[class='btn btn-lg btn-primary btn-block']"

	def login_test(nome, senha)
		usuario.set(nome)
		password.set(senha)
	end

end


	
