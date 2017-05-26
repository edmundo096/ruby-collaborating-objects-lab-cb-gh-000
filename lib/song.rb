class Song

  def self.new_by_filename(filename)
    artist, name = filename.split(" - ")
    song = self.new(name)
    song.artist_name = artist
    song
  end


  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name=(artist_name)
    artist = Artist.find_or_create_by_name(artist_name)
    artist.add_song(self)
    self.artist = artist
  end

end
