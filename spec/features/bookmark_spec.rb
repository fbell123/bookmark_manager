require 'spec_helper'
require './lib/app/models/link'

RSpec::feature "link display", :type => :feature do
  Link.create(id: 5, url: 'http://google.com', title: 'google')

    scenario 'be able to view stored links' do
      visit '/links'

      expect(page.status_code).to eq 200

      scenario "user is able to save a link" do
        expect(page).to have_text('google')
      end
    end
  end
end
