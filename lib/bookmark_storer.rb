require 'pg'

class Bookmark_Storer

  def self.view_bookmarks
    if ENV['ENVIRONMENT'] == 'test'
      conn = PG.connect( dbname: 'bookmark_manager_test' )
    else
      conn = PG.connect( dbname: 'bookmark_manager' )
    end

    @bookmarks = []
    conn.exec( "SELECT * FROM bookmarks" ) do |result|
      result.each do |row|
        @bookmarks << row["url"]
      end
    end
    @bookmarks
  end

end
