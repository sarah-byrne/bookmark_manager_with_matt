require './lib/bookmark_storer'

describe Bookmark_Storer do
  it 'returns contents of test database' do
    populate_test_db
    expect(Bookmark_Storer.view_bookmarks).to include('academy' => 'http://www.makersacademy.com')
  end
end
