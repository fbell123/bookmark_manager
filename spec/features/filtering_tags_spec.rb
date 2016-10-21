require 'spec_helper'

feature "Filter tags" do

  scenario 'filters links by tag' do
    create_multi_links
    fill_in :tags, with: "Search engine"
    click_button "Search"
    expect(page).to have_content "www.google.co.uk"
  end

end
