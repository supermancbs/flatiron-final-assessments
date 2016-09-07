class Restaurant

  @@all = []

  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def reviews
    Review.all.select {|review| review.restaurant==self}
  end

  def customers
    reviews.map {|review| review.customer}.uniq
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    all.find {|restaurant| restaurant.name==name}
  end

end
