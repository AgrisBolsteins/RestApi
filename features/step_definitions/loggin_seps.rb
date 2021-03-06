
Given(/^I have logged in as a regular user$/) do
  @user = User.new('agrisbolsteins@yopmail.com', 'parole123')
  login_positive(@user)
end


Given(/^I try to log in using invalid password$/) do
  @user = User.new('agrisbolsteins@yopmail.com', 'parole12')
  login_wrong_password(@user)
end

Then(/^I check if I am not logged in$/) do
  check_if_user_not_logged_in(@user)
end