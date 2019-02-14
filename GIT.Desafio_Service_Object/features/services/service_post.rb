class Books

	include HTTParty

	base_uri "http://fakerestapi.azurewebsites.net"

	def obter(index=nil)
		self.class.get("/api/Books/#{index}")
	end

	def create_book
		self.class.post("/api/Books",
			:body => {'Title'=> 'Livro Dom Casmurro', 'Description'=> 'teste@inmetrics.com.br', 'PageCount'=> 256, 'Excerpt'=> 'Sumário resumido', 'PublishDate'=> '2017-06-15T13:00:00.549505+00:00'}.to_json,
			:headers => {'Content-Type' => 'application/json'})
	end

	def edit_book
		self.class.put("/api/Books/#{2}",
			:body => 
			{'ID': 1, 
			'Title': 'Livro meu', 
			'Description': 'meu@inmetrics.com.br', 
			'PageCount': 300, 
			'Excerpt': 'Sumário meu', 
			'PublishDate': '2017-06-15T13:00:00.549505+00:11'}.to_json,
			:headers => {'Content-Type' => 'application/json'})
	end
end