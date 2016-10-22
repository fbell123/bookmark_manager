require 'spec_helper'

feature 'User sign up' do
  scenario 'allows a user to sign up' do

    visit '/signup'

    fill_in 'email', :with => 'elizabeth@makers.com'
    fill_in 'password', :with => 'password'

    click_button 'Sign up'

    expect(page).to have_content('Welcome elizabeth@makers.com')

  end

  scenario 'increments users by 1' do

    visit '/signup'

    fill_in 'email', :with => 'elizabeth@makers.com'
    fill_in 'password', :with => 'password'

    click_button 'Sign up'

    expect{user.increment}.to change {user.count}.by(1)

  end
end
