def populate_test_db
  conn = PG.connect( dbname: 'bookmark_manager_test')
  conn.exec( "TRUNCATE bookmarks" )
  conn.exec( "INSERT INTO bookmarks (id, url) VALUES (1, 'http://www.makersacademy.com') ")
end
