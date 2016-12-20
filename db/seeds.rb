# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
User.create([
  email: "david@david.com",
  password: "peelo5141"
  ])
  
Product.destroy_all
Product.create([
  { brand: "Federal", caliber: ".22", grade: "Value", prod_type: 'Rimfire' },
  { brand: "Remington", caliber: ".22", grade: "Value", prod_type: 'Rimfire' },
  { brand: "CCI", caliber: ".22", grade: "Value", prod_type: 'Rimfire' },
  { brand: "Remington", caliber: "9mm", grade: "Value", prod_type: 'Pistol'},
  { brand: "Hornday", caliber: "9mm", grade: "Defense", prod_type: 'Pistol'},
  { brand: "Winchester", caliber: "9mm", grade: "Value", prod_type: 'Pistol'},
  { brand: "Hornday", caliber: ".45", grade: "Defense", prod_type: 'Pistol'},
  { brand: "Winchester", caliber: ".45", grade: "Value", prod_type: 'Pistol' },
  { brand: "Remington", caliber: ".45", grade: "Defense", prod_type: 'Pistol'},
  { brand: "Remington", caliber: "40mm", grade: "Value", prod_type: 'Pistol'},
  { brand: "Hornday", caliber: "40mm", grade: "Defense", prod_type: 'Pistol'},
  { brand: "Winchester", caliber: "40mm", grade: "Value", prod_type: 'Pistol'},
  { brand: "Hornday", caliber: ".357", grade: "Defense", prod_type: 'Pistol'},
  { brand: "Winchester", caliber: ".357", grade: "Value", prod_type: 'Pistol' },
  { brand: "Remington", caliber: ".357", grade: "Defense", prod_type: 'Pistol'},
  { brand: "Federal", caliber: "12g", grade: "Value", prod_type: 'Shotgun'},
  { brand: "Remington", caliber: "12g", grade: "Value", prod_type: 'Shotgun'},
  { brand: "Winchester", caliber: "12g", grade: "Value", prod_type: 'Shotgun'},
])


p "Created #{Product.count} products"
