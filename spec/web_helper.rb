
def create_link
  visit '/links/new'
  fill_in :title, with: 'Kitten Academy'
  fill_in :url, with: 'http://www.kittenacademy.com'
end