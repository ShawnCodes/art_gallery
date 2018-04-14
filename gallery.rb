class Gallery

  attr_reader :name, :location

  @@all = []

  def initialize(name, location)
    @name = name
    @location = location
    @@all << self
  end

  def self.all
    @@all
  end

  def all_paintings
    Painting.all.select {|painting| painting.gallery == self}
  end

  def all_artists
    Artist.all.select { |artist| artist.gallery == self }
  end

  def buy_painting(painting_name, price)
    Painting.all.each do |el|
      if el.name == painting_name
        el.gallery = self
        el.value = price
      end
    end
  end

  def add_artist
    self
  end

end
