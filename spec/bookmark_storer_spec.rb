require './lib/bookmark_storer'

describe Bookmark_Storer do
  it 'returns each bookmark as text' do
    bookmarks = Bookmark_Storer.new
    expect(bookmarks.view_bookmarks).to include('http://www.makersacademy.com')
  end

  it 'returns contents of test database' do
    bookmarks = Bookmark_Storer.new('bookmark_manager_test')
    conn = PG.connect( dbname: 'bookmark_manager_test' )
    conn.exec( "TRUNCATE bookmarks" )
    conn.exec( "INSERT INTO bookmarks (id, url)
              VALUES (1, 'http://www.makersacademy.com') ")
    expect(bookmarks.view_bookmarks).to include('http://www.makersacademy.com')
  end

end
