class Review

  @@all = []
  attr_reader :text, :restaurant, :customer

  def initialize(text, restaurant, customer)
    @text = text
    @restaurant = restaurant
    @customer = customer
    @@all << self
  end

  def self.all
    @@all
  end


end
