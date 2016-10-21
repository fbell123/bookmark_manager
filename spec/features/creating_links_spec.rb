require 'spec_helper'

feature 'Creating new links' do
  scenario 'adding a site address and title to the bookmark manager' do

    create_links

    expect(page.status_code).to eq 200
    expect(current_path).to eq '/links'

    within 'ul#links' do
      expect(page).to have_content('http://www.makersacademy.com')
    end
  end
end
