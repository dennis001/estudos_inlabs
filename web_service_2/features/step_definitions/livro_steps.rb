Quando(/^eu estiver no sistema e postar um comentario sobre o livro$/) do
 	begin
 		@response = Comments.new.create
 		puts @response.body
 	end
end

Então(/^devo validar se o mesmo foi publicado nos comentarios$/) do
	expect(@response.code).to eq 200
	puts "Validado o recebimento do código de resposta 200"  
end
