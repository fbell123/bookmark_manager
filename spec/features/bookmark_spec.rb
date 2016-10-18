require 'spec_helper'


feature "link display" do

  scenario 'be able to view stored links' do
    Link.create(url: "www.google.com", title: "google")

    visit '/links'

    expect(page.status_code).to eq 200

    scenario "user is able to save a link" do
      expect(page).to have_text('google')
    end
  end
end
