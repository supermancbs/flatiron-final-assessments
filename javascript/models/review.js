const Review = ( function Review(){
  var counter = 0

  return class {
    constructor(text, customerId, restaurantId) {
      this.id = ++counter
      this.text = text
      this.customerId = customerId
      this.restaurantId = restaurantId
      store.reviews.push(this)
    }

    customer(){
      return store.customers.filter((customer) => {
        return customer.id===this.customerId
      })
    }

    restaurant(){
      return store.restaurants.filter((restaurant) => {
        return restaurant.id===this.restaurantId
      })
    }

    static all() {
      return store.reviews
    }
  }
}
())
