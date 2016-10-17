require 'spec_helper'


feature 'See all links' do

  scenario 'list all bookmarks' do

    add_link
    expect(page.status_code).to eq 200

    within 'ul#links' do
      expect(page).to have_content('Google')
      
    end
  end
end
