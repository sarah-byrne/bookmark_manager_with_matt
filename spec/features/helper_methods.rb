def populate_test_db
  conn = PG.connect( dbname: 'bookmark_manager_test')
  conn.exec( "TRUNCATE bookmarks" )
  Bookmark_Storer.add_bookmark("http://www.facebook.com")
  Bookmark_Storer.add_bookmark("http://www.makersacademy.com")
end
