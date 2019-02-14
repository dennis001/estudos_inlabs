class Steps < Calabash::ABase
	def tutorial
		touch("* id:'walkthrough_btnSkip'")	
	end

	def minha_conta
		sleep 3
		wait_for_elements_exist(["* text:'Acesse sua conta'"], :timeout => 40)
		sleep 3
		touch("android.widget.ImageView")
		sleep 3
		wait_for_elements_exist(["*  id:'compMenuList_cielo_mobile_text'"], :timeout => 40)
		sleep 3
		touch("* text:'CENTRAL DE AJUDA'")
		sleep 3
		#wait_for_elements_exist(["* text:'Perguntas Frequentes'"], :timeout => 40)
		touch("* text:'Perguntas Frequentes'")
		sleep 3
	end

	def perguntas_frequentes
		touch("webView css:'input#neoFormAIInput'")
		sleep 3
		keyboard_enter_text("O que é Cielo Mobile")
		sleep 3
		press_enter_button
		sleep 3
		expect('O que é Cielo Mobile').to eq('O que é Cielo Mobile')
	end
end