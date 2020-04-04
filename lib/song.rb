class Song
  attr_reader :name, :artist, :genre
  @@all = [ ]
  @@count = 0
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << self.artist 
    Song.all << self
  end

   def self.all
     @@all
   end

  def self.count
    @@all.count
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
  self.genre.count
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
