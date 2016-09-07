# We want to add the following methods to each of the classes
# An all method, where each object is added upon initialization of the object
# A find_by_name method for both the customer and the restaurant
# Build the following methods on the customer class
  # Customer#add_review


  # Review#customer
  # Review#restaurant

  # Restaurant#customers
  # Restaurant#reviews

# If you are not re-sketching out your domain, and thinking about single source of truth,
# you are doing it wrong.

#Customer has many reviews
#Customer has many restaurants through reviews
#A restaurant has many reviews
#A restaurant has many customers through reviews
#review belongs to customers and reviews
