class Comments

	include HTTParty

	base_uri "http://fakerestapi.azurewebsites.net/swagger/ui/index#/"

	def create
		self.class.post("/api/Books",
		:body => {"Title" => "Dom Casmurro",
				  "Description" => "teste@inmetrics.com.br",
				  "PageCount" => 256,
				  "Excerpt" => "Sumário resumido",}.to_json,
		:headers => {"Countent-Type" => "application/json"})
		
	end

	def get(index)
		self.class.get("/api/Authors/#{index}")
	end

	def update(index)
		self.class.put("/api/Authors/#{index}",
			[:body => { "ID" => 50,
				  "Title" => "Dom Casmurro",
				  "Description" => "teste@inmetrics.com.br",
				  "PageCount" => 256,
				  "Excerpt" => "Sumário resumido",
				  "PublishDate" => "0001-01-01T00:00:00" }.to_json,
		:headers => {"Countent-Type" => "application/json"}])
	end
end