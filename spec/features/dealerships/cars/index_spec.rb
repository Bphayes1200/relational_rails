require 'rails_helper'

RSpec.describe 'Dealerships car index' do 
  it 'shows all of the cars associated with that dealership' do 
    dealership_1 = Dealership.create!(name: "BH Ford", city: "Boulder", rank: 1, service_shop: true)
    car_1 = dealership_1.cars.create!(make: "Ford", model: "F150", year: 2014, accident: true, mileage: 80000)
    car_2 = dealership_1.cars.create!(make: "Ford", model: "fusion", year: 2016, accident: true, mileage: 80000)
require 'pry'; binding.pry
    visit "/dealerships/#{dealership_1.id}/cars"

    expect(page).to have_content(car_1.make)
    expect(page).to have_content(car_1.model)
    expect(page).to have_content(car_1.year)
    expect(page).to have_content(car_1.accident)
    expect(page).to have_content(car_1.mileage)
    expect(page).to have_content(car_1.dealership_id)
    expect(page).to have_content(car_2.make)
    expect(page).to have_content(car_2.model)
    expect(page).to have_content(car_2.year)
    expect(page).to have_content(car_2.accident)
    expect(page).to have_content(car_2.mileage)
    expect(page).to have_content(car_2.dealership_id)
  end
end