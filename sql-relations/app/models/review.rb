class Review
  include Databaseable::InstanceMethods
  extend Databaseable::ClassMethods

  ATTRIBUTES = {
    id: "INTEGER PRIMARY KEY",
    customer_id: "INTEGER",
    restaurant_id: "INTEGER"
  }

  attr_accessor(*self.public_attributes)
  attr_reader :id


  def customer
    sql = <<-SQL
      SELECT customers.* FROM customers
      INNER JOIN reviews ON reviews.customer_id = customers.id
      WHERE reviews.id = ?
      LIMIT 1
    SQL
    self.class.db.execute(sql, self.id).first
  end

  def restaurant
    sql = <<-SQL
      SELECT restaurants.* FROM restaurants
      INNER JOIN reviews ON reviews.restaurant_id = restaurants.id
      WHERE reviews.id = ?
      LIMIT 1
    SQL
    self.class.db.execute(sql, self.id).first
  end


end
