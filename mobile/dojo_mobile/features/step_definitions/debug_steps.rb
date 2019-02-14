Dado(/^que eu valide que existe o projeto Spring\-boot$/) do
	sleep 5
	page(Geral).down_view(12)
	
end

Quando(/^clicar no projeto$/) do
 	touch("* text:'spring-boot'")
 	touch("* text:'spring-boot'")
end

Entao(/^valido quantos commits existe no projeto$/) do
	wait_for_elements_exist(["* text:'30 opened / 0 closed'"], :timeout => 40)
	 commits_counter_header_element = query("AppCompatTextView {text CONTAINS 'opened'}").first
	 total_commits = (commits_counter_header_element['text'].split(" ").first).to_i
	  list_commits = []
	  list_usernames = []
	  while list_commits.count < total_commits

	    # find all commits on screen
	    titles = @actions.find_element_by_id('repo_detail_title')

	    # for each commit
	    titles.each do |item|
	      # add the title-commit ot list_commits if not exists in the list
	      unless list_commits.include?(item['text'])
	        list_commits << item['text']
	      end
	    end

	    usernames = @actions.find_element_by_id('repo_detail_username')
	    usernames.each do |item|
	      list_usernames << item['text'] unless list_usernames.include?(item['text'])
	    end

	    #scroll down the screen until list_commits.count < total_commits
	    @actions.scroll_down_by_element_id('detail_list')

	  end

	  # print commits titles and authors in the console output
	  for i in 0..list_commits.count-1
	    puts "#{i+1} - Commit Title: #{list_commits[i]} - Author: #{list_usernames[i]}\n"
	  end

	  # verify if the total commits counter in the header is iqual to the list commits count
	  expect(list_commits.count).to eq total_commits
	end