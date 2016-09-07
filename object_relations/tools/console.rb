require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

clark = Customer.new("Clark")
mcdonalds = Restaurant.new("McDonalds")
chiptole = Restaurant.new("Chiptole")
review1 = clark.add_review("dank", mcdonalds)
review2 = clark.add_review("smells good", chiptole)

alex = Customer.new("Alex")
burgerking = Restaurant.new("Burger King")
tacobell = Restaurant.new("Taco Bell")
review3 = alex.add_review("its okay", tacobell)
review4 = alex.add_review("really bad", burgerking)

Pry.start
