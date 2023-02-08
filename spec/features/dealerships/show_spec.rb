require 'rails_helper'

RSpec.describe "dealerships index page", type: :feature do 
  it "can see all dealership names" do 
    dealership_1 = Dealership.create!(name: "BH Ford", city: "Boulder", rank: 1, service_shop: true)
    dealership_2 = Dealership.create!(name: "Mountain Lexus", city: "Broomfield", rank: 2, service_shop: false)
    dealership_3 = Dealership.create!(name: "CH Toyota", city: "Denver", rank: 3, service_shop: true)

    visit "/dealerships/#{dealership_1[:id]}"

    expect(page).to have_content(dealership_1.name)
    expect(page).to have_content(dealership_1.city)
    expect(page).to have_content(dealership_1.rank)
    expect(page).to have_content(dealership_1.service_shop)
  end
end