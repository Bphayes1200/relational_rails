require 'rails_helper'

RSpec.describe Dealership, type: :model do 
  it {should have_many :cars}

  describe "class methods" do 
    describe ':: order_by_created_at' do 
      it 'will order the dealerships by the most recently created' do 
        dealership_1 = Dealership.create(name: "BH Ford", city: "Boulder", rank: 1, service_shop: true)
        dealership_2 = Dealership.create(name: "Mountain Lexus", city: "Broomfield", rank: 2, service_shop: false)
        dealership_3 = Dealership.create(name: "CH Toyota", city: "Denver", rank: 3, service_shop: true)
        require 'pry'; binding.pry
        expect(Dealership.order_by_created_at).to eq([dealership_3, dealership_2, dealership_1])
      end
    end
  end

  describe "instance methods" do 
    describe '#num_of_cars' do 
      it 'will return the number of cars for a dealership' do 
        dealership_1 = Dealership.create(name: "BH Ford", city: "Boulder", rank: 1, service_shop: true)
        car_1 = Car.create!(make: "Ford", model: "F150", year: 2014, accident: true, mileage: 80000, dealership_id: dealership_1[:id])
        car_2 = Car.create!(make: "Ford", model: "Fusion", year: 2014, accident: true, mileage: 80000, dealership_id: dealership_1[:id])
# require 'pry'; binding.pry
        expect(dealership_1.num_of_cars).to eq(2)
      end
    end
  end
end

