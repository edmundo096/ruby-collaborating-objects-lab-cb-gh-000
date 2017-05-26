class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    # https://stackoverflow.com/questions/1755665/get-names-of-all-files-from-a-folder-with-ruby
    Dir["#{path}/*.mp3"].collect { |filepath| filepath.split("/").last }
  end

  def import
    self.files.each { |filename| Song.new_by_filename(filename) }
  end

end
