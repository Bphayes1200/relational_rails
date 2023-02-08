class Dealership < ApplicationRecord
  has_many :cars

  def self.order_by_created_at
    order(created_at: :DESC).to_a
  end

  def num_of_cars
    cars.length
  end
end