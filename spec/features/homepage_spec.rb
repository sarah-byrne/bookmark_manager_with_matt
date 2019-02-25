require './app'

feature "it has a name and a URL" do
  scenario "visits page" do
    visit('/')
    expect(page).to have_content("Sport www.bbc.co.uk")
  end


end
