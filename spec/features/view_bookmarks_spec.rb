feature 'user can see bookmarks' do
  it 'presents list of bookmarks on the page' do
    visit('/')
    click_button('view_bookmarks')
    expect(page).to have_content('http://www.makersacademy.com')  
  end
end
