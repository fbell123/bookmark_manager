require 'spec_helper'

feature 'be able to add new links' do

  before :each do
    Link.all.destroy
    new_link
  end

  scenario 'form to add links exists' do
    expect(page).to have_text('google')
  end
end
