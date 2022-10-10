class RestaurantPizzaSerializer < ActiveModel::Serializer
  attributes :id, :price, :pizza_id, :restaurant_id

  belongs_to :restaurant
  belongs_to :pizza
end
