class Restaurant
  attr_accessor :name, :adress, :type_of_food, :city, :average_rating
  #TODO add relevant accessors if necessary

  def initialize(city, name)
    #TODO: implement constructor with relevant instance variables
    @name = name
    @city = city
    @adress = "to be defined"
    @type_of_food = "to be defined"
    @average_rating = 0
    @average_rating_coef = 0
  end

  def rate(rating)
    @average_rating_coef+=1
    @average_rating = (@average_rating+rating)/(@average_rating_coef)
  end

  def self.filter_by_city(restaurants, city)
    return restaurants.select {|restaurant| restaurant.city == city}
  end
end