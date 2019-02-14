class PageEditar < SitePrism::Page

	element :pesquisar, "button[class='dropdown-toggle btn btn-default searchbutton']"
	element :procurar, "input[name='query_string']"
	element :button, "button[class='btn btn-default']"
	element :link, :xpath,"//*[@id='pagecontent']/table/tbody[2]/tr/td[2]/a"
	element :actions, "li[class='dropdown']"
	element :edit, "input[id='edit_button']"
	element :contact, "input[name='contact_name']"
	elements :menu, "ul[class='nav nav-pills nav-stacked']"

	def buscar(nome)
		procurar.set(nome)
		contact.set(nome)
	end

	
end
	 