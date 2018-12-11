class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    if !@@genres.any? {|entry| entry == genre}
      @@genres << genre
    end
    if !@@artists.any? {|dude| dude == artist}
      @@artists << artist
    end
  end

  def count
    @@count
  end
  def artists
    @@artists
  end
  def genres
    @@genres
  end
end
