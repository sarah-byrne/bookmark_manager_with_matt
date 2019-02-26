require 'pg'

class Bookmark_Storer

  def self.view_bookmarks
    ENV['ENVIRONMENT'] == 'test' ? conn = PG.connect( dbname: 'bookmark_manager_test' ) : conn = PG.connect( dbname: 'bookmark_manager' )

    @bookmarks = []
    conn.exec( "SELECT * FROM bookmarks" ) do |result|
      result.each do |row|
        @bookmarks << row["url"]
      end
    end
    @bookmarks
  end

  def self.add_bookmark(website)
    ENV['ENVIRONMENT'] == 'test' ? conn = PG.connect( dbname: 'bookmark_manager_test' ) : conn = PG.connect( dbname: 'bookmark_manager' )
    conn.exec( "INSERT INTO bookmarks (url) VALUES ('#{website}');" )
  end

end
