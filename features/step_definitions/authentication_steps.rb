Given /^a user visits signin page$/ do
	visit signin_path
end

When /^user enters invalid data$/ do
	click_button "Sign in"
end

Then /^user should see an error message$/ do
	it { should have_error_message('Invalid')}
end

Given(/^user has an account$/) do
  @user = User.create(name: "Example User", email: "user@example.com",
                      password: "foobar", password_confirmation: "foobar")
	
end

When /^the user enters valid and correct data$/ do 
	fill_in "Email", 		with: @user.email
	fill_in "Password", with: @user.password
	click_button "Sign in"
end

Then /^the user should see his profile$/ do
	page.should have_selector('title', text: @user.name)
end

# Then /^he should see a signout link$/ do
# 	 	page.should have_link('Sign Out', href: signout_path)
# end 