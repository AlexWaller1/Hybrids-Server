# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Hybrid.create(name: 'Cornelius', species: 'Tree Hybrid', origin: 'Randall Park Mall',
personality: 'Introspective and Curious', image: 'https://cdna.artstation.com/p/assets/images/images/036/648/396/large/alex-waller-hybrids-40.jpg?1618246538')

Robot.create(name: 'Mike', model: 'LB-103', manufacturer: 'Antibi Incorporated', purpose: 'Manual Labor',
image: 'https://cdnb.artstation.com/p/assets/images/images/036/648/525/large/alex-waller-hybrids-43.jpg?1618246747')

# seeds.rb great for testing out data

