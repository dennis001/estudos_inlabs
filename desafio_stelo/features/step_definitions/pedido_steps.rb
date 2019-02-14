Dado(/^que eu faça um pedido de compra via webservices$/) do  
  #@compra_stelo = YAML.dump(YAML.load_file('./fixtures/json_massa.yml'))
  @compra_stelo = JSON.parse(File.read('./fixtures/stelo_massa.json'))
  @resposta = Vtex_cartao_pf_hlm.new.nova_compra(@compra_stelo)
  
end                                                                                  
                                                                                     
Dado(/^receba a confirmação do pedido efetuado com sucessso$/) do                    
   @num_compra = @resposta['orderId']
   expect(@resposta.code).to eq(200)
         
end                                                                                  
                                                                                     
Quando(/^eu acessar a area de venda da minha loja$/) do                              
  @login_page = Login_page.new
  @login_page.load
  @login_page.login_ok('kassiotestes.stelo@gmail.com', 'senha@1234')
  @home_page = Home_page.new
  @home_page.wait_for_menu_links
  @home_page.menu_links[0].click
  @home_page.wait_for_minhas_vendas_link
  @home_page.minhas_vendas_link[0].click
  
end                                                                                  
                                                                                     
Quando(/^realizo uma busca com o numero da venda$/) do                               
  @minhas_vendas_page = Minhas_vendas_page.new
  @minhas_vendas_page.wait_for_venda_span
  #binding.pry
  @minhas_vendas_page.filtar_venda(@num_compra)
  

end                                                                                  
                                                                                     
Então(/^verifico em detalhes do pedido o numero do pedido$/) do 
  print @minhas_vendas_page.has_content?(@num_compra)

  #expect()to eq()                     
  
end                                                                                  
                                                                                     