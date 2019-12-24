class Song
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@artists = []
  @@genres = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    
    @@count += 1
    @@artists << artist
    @@genres << genre
  end
  
  def self.count
    @@count
  end
  
  def self.artists
    artists = []
    @@artists.each do |artist|
      if !artists.include?(artist)
        artists << artist
      end
    end
    artists
  end
  
  def self.genres
    @@genres
  end
end