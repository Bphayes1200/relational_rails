class Dealership < ApplicationRecord
  has_many :cars

  def self.order_by_created_at
    order(created_at: :DESC).to_a
  end
end