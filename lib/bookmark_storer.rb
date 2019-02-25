require 'pg'

class Bookmark_Storer

  def initialize
    @bookmarks = []
  end

  def view_bookmarks
    conn = PG.connect( dbname: 'bookmark_manager' )
    conn.exec( "SELECT * FROM bookmarks" ) do |result|
      result.each do |row|
        @bookmarks << row["url"]
      end
    end
    @bookmarks
  end

end
