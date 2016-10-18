require 'spec_helper'


feature "link display" do

  before :each do
    new_link
  end

  scenario 'displays the page' do
    expect(page.status_code).to eq 200
  end

  scenario "user is able to save a link" do
    expect(page).to have_text('google')
  end
end
