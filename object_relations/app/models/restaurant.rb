class Restaurant
  
  @@all = []

  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def all
    @@all
  end

  def self.find_by_name(name)
    all.find {|restaurant| restaurant.name==name}
  end

end
