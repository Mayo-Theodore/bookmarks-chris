
class Bookmark
    def initialize
      @bookmarks = ["www.Google.com","www.Apple.com"]
    end

    def all
      @bookmarks.join(", ")
    end
end