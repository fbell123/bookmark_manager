def new_link

  fill_in :title, with: "Google"
  fill_in :url, with: "www.google.com"

  click_button "Add link"
end
