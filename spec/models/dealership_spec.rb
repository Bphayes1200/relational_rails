require 'rails_helper'

RSpec.describe Dealership, type: :model do 
  it {should have_many :cars}
end 

describe "class methods" do 
  describe ':: order_by_created_at' do 
    it 'will order the dealerships by the most recently created' do 
      dealership_1 = Dealership.create(name: "BH Ford", city: "Boulder", rank: 1, service_shop: true)
      dealership_2 = Dealership.create(name: "Mountain Lexus", city: "Broomfield", rank: 2, service_shop: false)
      dealership_3 = Dealership.create(name: "CH Toyota", city: "Denver", rank: 3, service_shop: true)

      expect(Dealership.order_by_created_at).to eq([dealership_3, dealership_2, dealership_1])
    end
  end
end