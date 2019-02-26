require './lib/bookmark_storer'

describe Bookmark_Storer do
  it 'returns contents of test database' do
    test_connection
    truncate_test_db
    conn.exec( "INSERT INTO bookmarks (id, url) VALUES (1, 'http://www.makersacademy.com') ")
    expect(bookmarks.view_bookmarks).to include('http://www.makersacademy.com')
  end
end
