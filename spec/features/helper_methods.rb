def test_connection
  bookmarks = Bookmark_Storer.new('bookmark_manager_test')
  conn = PG.connect( dbname: 'bookmark_manager_test' )
end

def truncate_test_db
  conn.exec( "TRUNCATE bookmarks" )
end
