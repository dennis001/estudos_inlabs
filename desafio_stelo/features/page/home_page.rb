class Home_page < SitePrism::Page
	elements :menu_links, "a[class='list__item-inner']"
	elements :minhas_vendas_link, "a[href='/vendedor/minhas-vendas#my-deals']"

end	