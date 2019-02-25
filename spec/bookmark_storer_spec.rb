require './lib/bookmark_storer'

describe Bookmark_Storer do
  it 'returns each bookmark as text' do
    expect(Bookmark_Storer.new.view_bookmarks).to eq(["Sport www.bbc.co.uk"])
  end
end
