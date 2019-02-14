class Minhas_vendas_page < SitePrism::Page
	element :busca_vendas_field, "input[id='search']"
	element :filtrar_button, "button[class='btn btn--1']"
	element :venda_span, "span[class='no-wrap align--center']"
	elements :detalhes_pedido, "dd[class='align--middle grid-1 grid-md-1-2']"


	def filtar_venda(cod_venda)
		busca_vendas_field.set(cod_venda)
		filtrar_button.click
		#sleep(5)
		venda_span.click
	end



end
