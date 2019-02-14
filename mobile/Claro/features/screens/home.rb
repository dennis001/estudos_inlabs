class Home < Calabash::ABase
	def menu_principal
	  page(Geral).validar_elemento('action_bar')
 	  touch("android.widget.ImageButton")
 	  sleep 3
 	  touch("* text:'Cadastre-se'")
 	  touch("android.widget.EditText")
  	end

  	def preencher_cadastro
  		binding.pry
  		keyboard_enter_text(Faker::CPF.number)
  		touch("* id:'btContinue'")

  		@nome = Faker::Zelda.character
  		email = Faker::Internet.email(@nome)
  		senha = Faker::Number.number(8)
  		@sobre_nome = Faker::Name.last_name
  		
  		#nome
  		touch("* id:'edit_name'")
  		keyboard_enter_text(@nome)

  		#email
  		touch("* id:'edit_email'")
		keyboard_enter_text(email)  	
		touch("* id:'edit_email_repeat'")
		keyboard_enter_text(email)

		#senha
		touch("* id:'edit_password'")
		keyboard_enter_text(senha)
		touch("* id:'edit_password_repeat'")
		keyboard_enter_text(senha)

		#sobre_nome
		touch("* id:'edit_surname'")
		keyboard_enter_text(@sobre_nome)

		hide_soft_keyboard
		touch("* id:'checkbox_terms'")
		touch("* id:'btn_continue'")
  	end

  	def verificar
  		wait_for_elements_exist(["* text:'Selecione o seu plano'"], :timeout => 40)
		touch("android.widget.ImageButton")
		touch("android.widget.ImageButton")
		#binding.pry
  		wait_for_elements_exist(["* text:'#{@nome}'"], :timeout => 40)
		expect(element_exists("* text:'#{@nome}'")).to eq(true)
  	end
#  	query("* id:'menu_item'",setText:"#{@nome}")
end

	
