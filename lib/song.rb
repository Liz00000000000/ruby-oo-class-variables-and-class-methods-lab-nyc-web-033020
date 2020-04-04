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
  #binding.pry
  hash = {:pop => 0, :rap => 0 }
  self.all.each do |song|
       if @genre == "rap"
         hash[:rap] += 1
       elsif @genre == "pop"
         hash[:pop] += 1
      end
      return hash
    end
end

def self.artist_count

end

end
