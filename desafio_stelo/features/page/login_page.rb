class Login_page < SitePrism::Page
	set_url 'https://perfilh1.hml.stelo.com.br/vendedor'

	element :usuario_field, "input[id='username']"
	element :senha_field, "input[id='password']"
	element :entrar_button, "button[class='btn btn-block btn-submit']"



	def login_ok(user, password)
		usuario_field.set(user)	
		senha_field.set(password)
		entrar_button.click
	end



end