def new_link
  visit '/links/new'
  fill_in :title, with: "Google"
  fill_in :url, with: "www.google.com"
  click_button "add link"
end
