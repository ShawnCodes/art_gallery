def ArtistGallery

  attr_accessor :artist, gallery

  def initialize(artist, gallery)
    @artist = artist
    @gallery = gallery
  end

  def self.paintings
    Artist.all
  end

  def self.artists
    Paitings.all
  end

end
