class Painting

  attr_reader :name, :artist
  attr_accessor :value, :gallery

  @@all = []

  def initialize(value=0, name, gallery, artist)
    @name = name
    @artist = artist
    @gallery = gallery
    @value = value
    @@all << self
  end

  def self.all
    @@all
  end

  def add_to_gallery(new_gallery, purchase_price)
    gallery = new_gallery
    self.value = purchase_price
    new_gallery.all_paintings << self
    "Painting sold to #{new_gallery.name} for the unbelieveable sum of $#{purchase_price}"
  end

end
