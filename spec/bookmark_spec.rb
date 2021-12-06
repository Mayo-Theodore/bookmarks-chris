require_relative '../lib/bookmark.rb'

describe Bookmark do 

  it 'returns a list of bookmarks' do 
    bookmark = Bookmark.all
    expect(bookmark).to eq(["http://www.makersacademy.com", "http://www.destroyallsoftware.com"])
  end
end
