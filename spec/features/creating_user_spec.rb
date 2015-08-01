require 'spec_helper'

feature 'Creating Users' do
  scenario "can create a user" do
    visit '/'
    click_link 'Sign Up'

    fill_in 'Email', with: 'test@gmail.com'
    fill_in 'Password', with: 'rubyclass'
	  fill_in 'Password confirmation', with: 'rubyclass'
    click_button 'Sign up'

    expect(page).to have_content('Welcome! You have signed up successfully')
  end
end
