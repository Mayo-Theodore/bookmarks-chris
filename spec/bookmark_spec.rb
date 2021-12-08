require_relative '../lib/bookmark.rb'

describe Bookmark do 
  it 'returns a list of bookmarks' do 
    connection = PG.connect(dbname: 'bookmark_manager_test')

    # Add the test data
    connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.makersacademy.com');")
    connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.destroyallsoftware.com');")
    connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.google.com');")

    bookmarks = Bookmark.all

    expect(bookmarks).to include('http://www.makersacademy.com')
    expect(bookmarks).to include('http://www.destroyallsoftware.com')
    expect(bookmarks).to include('http://www.google.com')
  end

  describe '#create' do
    it 'Creates a new bookmark entry' do
      Bookmark.create("Title", "url")
      bookmarks = Bookmark.all
      expect(bookmarks).to include("url")
    end
  end

end
