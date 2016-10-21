
def create_links
  visit '/links/new'
  fill_in 'title', :with => 'Makers Academy'
  fill_in 'url', :with => 'http://www.makersacademy.com'
  fill_in 'tag', :with => 'Makers'
  click_button 'Add link'
end

def create_multi_links
  visit '/links/new'
  fill_in 'title', :with => 'Makers Academy'
  fill_in 'url', :with => 'http://www.makersacademy.com'
  fill_in 'tag', :with => 'Makers'
  click_button 'Add link'
  visit '/links/new'
  fill_in 'title', :with => 'Google'
  fill_in 'url', :with => 'www.google.co.uk'
  fill_in 'tag', :with => 'Search engine'
  click_button 'Add link'
end
