require 'pry'
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
  binding.pry
  hash = { }
  self.all.each do |song|
  song.each do |name, artist, genre|
      hash[genre] = 1
        end
    end
end

def self.artist_count

end

end
