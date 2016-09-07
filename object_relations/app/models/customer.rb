class Customer

  @@all = []

  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def add_review(review_text, restaurant)
    Review.new(review_text, restaurant, self)
  end

  def reviews
    Review.all.select {|review| review.customer==self}
  end

  def restaurants
    reviews.map {|review| review.restaurant}.uniq
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    all.find {|customer| customer.name==name}
  end

end


# Review#customer
# Review#restaurant

# Restaurant#customers
# Restaurant#reviews


# customer = customer.add_review('it was good', Restaurant.new)
# a new review tied ot the restaurant
# and tied to the customer
