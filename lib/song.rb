class Song
  attr_reader :name, :artist, :genre
  @@all = [ ]
  @@artists = [ ]
  @@genres = [ ]
  @@count = 0
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << self.artist
    @@genres << self.genre
    Song.all << self
  end

   def self.all
     @@all
   end

  def self.count
    @@count
  end

  def self.artists
    self.all.map do |song|
      song.artist
    end.uniq
  end

  def self.genres
    self.all.map do |song|
      song.genre
    end.uniq
  end

def self.genre_count
  hash = { }
  self.all.each do |song|
    song.map do |name, artist, genre|

end

def self.artist_count
  hash = { }
  @@artists.each_with_index do |element, index|
    element ||= hash[element]
    hash[element] = index
  end
  hash
end

end
