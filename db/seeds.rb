# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.destroy_all


Product.create([
  { brand: "Federal", caliber: ".22", grade: "value", prod_type: 'rimfire' },
  { brand: "Remington", caliber: ".22", grade: "value", prod_type: 'rimfire' },
  { brand: "CCI", caliber: ".22", grade: "value", prod_type: 'rimfire' },
  { brand: "Remington", caliber: "9mm", grade: "value", prod_type: 'pistol'},
  { brand: "Hornday", caliber: "9mm", grade: "defense", prod_type: 'pistol'},
  { brand: "Winchester", caliber: "9mm", grade: "value", prod_type: 'pistol'},
  { brand: "Hornday", caliber: ".45", grade: "defense", prod_type: 'pistol'},
  { brand: "Winchester", caliber: ".45", grade: "value", prod_type: 'pistol' },
  { brand: "Remington", caliber: ".45", grade: "defense", prod_type: 'pistol'},
  { brand: "Remington", caliber: "40mm", grade: "value", prod_type: 'pistol'},
  { brand: "Hornday", caliber: "40mm", grade: "defense", prod_type: 'pistol'},
  { brand: "Winchester", caliber: "40mm", grade: "value", prod_type: 'pistol'},
  { brand: "Hornday", caliber: ".357", grade: "defense", prod_type: 'pistol'},
  { brand: "Winchester", caliber: ".357", grade: "value", prod_type: 'pistol' },
  { brand: "Remington", caliber: ".357", grade: "defense", prod_type: 'pistol'},
  { brand: "Federal", caliber: "12g", grade: "value", prod_type: 'shotgun'},
  { brand: "Remington", caliber: "12g", grade: "value", prod_type: 'shotgun'},
  { brand: "Winchester", caliber: "12g", grade: "value", prod_type: 'shotgun'},
])


p "Created #{Product.count} products"
