
Quando(/^acessar a area Add Employee$/) do
  find('#menu_pim_viewPimModule').click
  find('#menu_pim_addEmployee').click
 end

 Quando(/^abrir o campo na pagina Employee List$/) do
  find('#menu_pim_viewPimModule').click
  find('#menu_pim_viewEmployeeList').click
end

Entao(/^devo cadastrar o funcionários$/) do
 	fill_in('firstName', :with => Faker::Name.first_name)
 	#fill_in('middleName', :with => Faker::Name.last_name)
 	fill_in('lastName', :with => Faker::Name.last_name) 
 	find('#btnSave').click
 	
 	find('#menu_pim_viewPimModule').click
  	find('#menu_pim_addEmployee').click

 	fill_in('firstName', :with => Faker::Name.first_name)
 	#fill_in('middleName', :with => 'Franco')
 	fill_in('lastName', :with => Faker::Name.last_name) 
 	find('#btnSave').click
 	find('#welcome').click
 	find(:xpath, '//*[@id="welcome-menu"]').click
end

Dado(/^que esteja na logado na pagina$/) do
	visit 'http://opensource.demo.orangehrmlive.com/index.php/auth/login'
	fill_in('txtUsername', :with => 'admin')
  	fill_in('txtPassword', :with => 'admin')
  	find(:xpath, '//*[@id="btnLogin"]').click
  	sleep 5
end

Entao(/^editar os dados dos funcionários$/) do
	fill_in('empsearch_employee_name_empName', :with => 'Russel')
  	find('#searchBtn').click
  	find(:xpath, '//*[@id="resultTable"]/tbody/tr[1]/td[3]/a').click
	#click_link('0010')
  	find(:xpath, '//*[@id="btnSave"]').click
  	choose('personal_optGender_2')
  	select('Single', :from => 'personal[cmbMarital]')
  	select('Bosnian', :from => 'personal[cmbNation]')
  	fill_in('personal_DOB', :with => '1985-12-07')
  	find(:xpath, '//*[@id="btnSave"]').click
  	expect('Successfully Saved')
  	find('#menu_pim_viewPimModule').click
  	find('#menu_pim_viewEmployeeList').click
  	sleep 5
  	fill_in('empsearch_employee_name_empName', :with => 'Jasmine')
  	find('#searchBtn').click
  	find(:xpath, '//*[@id="resultTable"]/tbody/tr[1]/td[3]/a').click
  	
  	#click_link('0011')
  	find(:xpath, '//*[@id="btnSave"]').click
  	choose('personal_optGender_2')
  	select('Married', :from => 'personal[cmbMarital]')
  	select('Bosnian', :from => 'personal[cmbNation]')
  	fill_in('personal_DOB', :with => '1995-03-23')
  	find(:xpath, '//*[@id="btnSave"]').click
  	expect('Successfully Saved')
end