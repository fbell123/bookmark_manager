require 'spec_helper'

feature 'Adding tags' do
  scenario 'adding a tag to the link in bookmark manager' do

  create_links

    expect(page.status_code).to eq 200
    expect(current_path).to eq '/links'

    within 'ul#links' do
      expect(page).to have_content('Makers')
    end
  end

end
