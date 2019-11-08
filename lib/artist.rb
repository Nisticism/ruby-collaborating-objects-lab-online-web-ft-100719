class Artist 
  
  attr_accessor :name 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self
  end
  
  def self.all
    @@all 
  end
  
  def add_song(song)
    song.artist = self
  end
  
  def songs 
    Song.all.select do |song|
      song.artist == self
    end
  end
  
  def self.find_or_create_by_name(name)
    if @all.include?()
  end
  
  def print_songs
    Song.all.select do |song|
      puts "#{song.name}" if song.artist == self
    end
  end
  
    
  
  
  
end
