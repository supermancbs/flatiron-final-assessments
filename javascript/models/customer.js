const Customer = ( function Customer(){
  var counter = 0

  return class {
    constructor(name) {
      this.id = ++counter
      this.name = name
      store.customers.push(this)
    }

    addReview(text, restaurant){
      return new Review(text, this.id, restaurant.id)
    }

    reviews(){
      return store.reviews.filter((review) => {
        return review.customerId===this.id
      })
    }

    restaurants(){
      return this.reviews().map((review) => {
        return review.restaurant()[0]
      })
    }

    static all() {
      return store.customers
    }
  }
}
())
