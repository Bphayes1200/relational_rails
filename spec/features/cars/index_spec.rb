require 'rails_helper'

RSpec.describe "car index page", type: :feature do 
  it "can see all cars" do 
  dealership_1 = Dealership.create!(name: "BH Ford", city: "Boulder", rank: 1, service_shop: true)
  car_1 = Car.create!(make: "Ford", model: "F150", year: 2014, accident: true, mileage: 80000, dealership_id: dealership_1[:id])

  visit "/cars"

  expect(page).to have_content(car_1.make)
  expect(page).to have_content(car_1.model)
  expect(page).to have_content(car_1.year)
  expect(page).to have_content(car_1.accident)
  expect(page).to have_content(car_1.mileage)
  expect(page).to have_content(car_1.dealership_id)
  end 
end 