class Song
  attr_reader :name, :artist, :genre
  @@all = [ ]
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    Song.all << self
  end

   def self.all
     @@all
   end

  def self.artists
    self.all.map do |song|
      song.artist
    end
  end

  def self.genres
    self.all.map do |song|
      song.genre
    end 
  end

def self.genre_count
  hash = { }
  @@genres.each_with_index do |element, index|
    element ||= hash[element]
    hash[element] = index
  end
  hash
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
