require 'spec_helper'


feature 'Create new links' do
  scenario 'add custom link to bookmarks' do
    
    add_link
    expect(current_path).to eq '/links'

    within "ul#links" do
      expect(page).to have_content "Google"
    end
  end

end
