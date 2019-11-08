class MP3Importer 
  
  attr_accessor :path
  
  def initialize(path)
    @path = path
  end
  
  def files
    all_files = []
    new_files = []
    all_files = Dir["#{path}"]
    all_files.each do |file|
      temp_files = []
      temp_files = file.split("/")
      new_files << temp_files
end
