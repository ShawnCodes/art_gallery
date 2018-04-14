require 'pry'

class Artist

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def all_paintings
    Painting.all.select {|painting| painting.artist == self}
  end

  def all_galleries
    all_paintings.map {|painting| painting.gallery}.uniq
  end

  def add_painting(painting_name)
    new_painting = Painting.new(panting_name, self)
  end

  def worth
    total_worth = 0
    self.all_paintings.each do |painting|
      total_worth += painting.value
    end
    total_worth
  end

end
