require './lib/bookmark_storer'

describe Bookmark_Storer do
  it 'returns each bookmark as text' do
    bookmarks = Bookmark_Storer.new
    expect(bookmarks.view_bookmarks).to include('http://www.makersacademy.com')
  end

end
