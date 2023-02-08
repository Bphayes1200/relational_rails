# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Dealership.destroy_all

Dealership.create!([
  { name: 'BH Ford',
    city: "Boulder", 
    rank: 1, 
    service_shop: true
  },
  { name: "Mountain Lexus", 
    city: "Broomfield", 
    rank: 2,
    service_shop: false
  },
  { name: 'CH Toyota', 
    city: 'Denver',
    rank: 3,
    service_shop: true
  }])

Car.destroy_all

Car.create!([
   { make: "Ford",
     model: "F150",
     year: 2014,
     accident: true,
     mileage: 80000,
     dealership_id: 1
   },
   { make: "Ford",
     model: "Fusion",
     year: 2014,
     accident: false,
     mileage: 50000,
     dealership_id: 1
   },
   { make: "Lexus",
     model: "Gx460",
     year: 2005, 
     accident: false, 
     mileage: 140000, 
     dealership_id: 2
   },
   { make: "Lexus", 
     model: "nx",
     year: 2023,
     accident: false, 
     mileage: 0, 
     dealership_id: 2
    },
    {make: "Toyota",
     model: "4Runner", 
     year: 2017,
     accident: true, 
     mileage: 40000,
     dealership_id: 3
    },
    {make: "Toyota",
     model: "RAV4", 
     year: 2022, 
     accident: false, 
     mileage: 10000,
     dealership_id: 3
     }])




