
def add_link
  visit '/links/new'

  fill_in :url, with: "www.google.co.uk"
  fill_in :title, with: "Google"

  click_button 'Submit'
end
