require 'pg'

class Bookmark_Storer

  def initialize(dbname='bookmark_manager')
    @dbname = dbname
    @bookmarks = []
  end

  def view_bookmarks
    conn = PG.connect( dbname: @dbname )
    conn.exec( "SELECT * FROM bookmarks" ) do |result|
      result.each do |row|
        @bookmarks << row["url"]
      end
    end
    @bookmarks
  end

end
