const Restaurant = ( function Restaurant(){
  var counter = 0

  return class {
    constructor(name) {
      this.id = ++counter
      this.name = name
      store.restaurants.push(this)
    }

    reviews(){
      return store.reviews.filter((review) => {
        return review.restaurantId===this.id
      })
    }

    customers(){
      return this.reviews().map((review) => {
        return review.customer()[0]
      })
    }

    static all() {
      return store.restaurants
    }
  }
}
())
