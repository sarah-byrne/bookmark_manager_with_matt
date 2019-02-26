feature 'Adding bookmarks' do
  scenario 'add a single bookmark' do
    visit '/'
    click_button 'add bookmark'
    fill_in 'url', with: 'http://www.hotmail.com'
    fill_in 'title', with: 'email account'
    click_button 'add to manager'
    expect(page).to have_link('email account', href: 'http://www.hotmail.com')
    expect(page).to have_link('social media fave', href: 'http://www.facebook.com')
  end
end
