require 'calabash-android/calabash_steps'

Dado(/^que ativo o aplicativo$/) do
	
end

Quando(/^digite todos os lados iguais do triangulo "([^"]*)" "([^"]*)" "([^"]*)"$/) do |v1, v2, v3|
	
      
	  touch("* id:'txtLado1'")
	  keyboard_enter_text v1 
	  touch("* id:'txtLado2'")
	  keyboard_enter_text v2 
	  touch("* id:'txtLado3'")
	  keyboard_enter_text v3 
  	  hide_soft_keyboard
  	  touch("* id:'btnCalcular'")
	  screenshot_embed
end

Então(/^vejo a resposta de um triangulo "([^"]*)"$/) do |mensagem|
 # expect(element_exists("* text:'#{mensagem}'")).to eq(true)
  wait_for_elements_exist(["* text:'#{mensagem}'"], :timeout => 40)
end