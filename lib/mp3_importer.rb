class MP3Importer 
  
  attr_accessor :path
  
  @@all_files = []
  
  def initialize(path)
    @path = path
  end
  
  def files
    all_files = []
    path_string = @path
    Dir.new("#{path_string}").each {|file| all_files << file }
    all_files.each do |file|
      temp_files = []
      temp_files = file.split("/")
      @@all_files << temp_files.last
    end
  end
  
  def import
    @@all_files.each do |song|
      Song.all << Song.new_by_filename(song)
    end
  end
  
end
