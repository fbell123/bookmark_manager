feature 'Adding tags' do
  scenario 'adding a tag to the link in bookmark manager' do

    visit '/links/new'
    fill_in 'title', :with => 'Makers Academy'
    fill_in 'url', :with => 'http://www.makersacademy.com'
    fill_in 'tag', :with => 'bananas'
    click_button 'Add link'

    expect(page.status_code).to eq 200
    expect(current_path).to eq '/links'

    within 'ul#links' do
      expect(page).to have_content('bananas')
    end
  end
  scenario 'adding a tag to the link in bookmark manager' do

    visit '/links/new'
    fill_in 'title', :with => 'Google'
    fill_in 'url', :with => 'www.google.com'
    fill_in 'tag', :with => 'pears'
    click_button 'Add link'

    expect(page.status_code).to eq 200
    expect(current_path).to eq '/links'

    within 'ul#links' do
      expect(page).to have_content('pears')
    end
  end
end
