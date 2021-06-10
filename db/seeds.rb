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

Mimimart.create(name: 'Sinclair of Hardin', address: '1424 N Crawford Ave', sodamachine: 'Fizz-O-Matic-3700',
description: 'Great soda selection, wide variety of beef jerky, and an exceptional popcorn machine',
state: 'Montana', image: 'https://farm5.staticflickr.com/4207/34980525513_da503553d8_o.jpg')

Minimart.create(name: 'Sinclair of Hardin', address: '1424 N Crawford Ave', sodamachine: 'Fizz-O-Matic-3700',
    description: 'Great soda selection, wide variety of beef jerky, and an exceptional popcorn machine',
    state: 'Montana', image: 'https://farm5.staticflickr.com/4207/34980525513_da503553d8_o.jpg')
    
Minimart.create(name: 'Test')

Skatepark.create(name: 'Mitchell Skate Hangar', location: 'Mitchell, South Dakota', features: 'Great Ramps',
    image: 'https://1tlmo92ipsnm1fchmn35l7xz-wpengine.netdna-ssl.com/wp-content/uploads/2018/10/by-amuricaphoto-1024x1024.jpg' )

City.create(name: 'Green Bay', population: '104,578', state: 'Wisconsin', country: 'United States',
image: 'https://www.mcw.edu/departments/human-resources/-/media/6F49B87BC612426AA95A4E41764079AE.ashx?anchor=middlecenter&scale=both&mode=crop',
report: 'Green Bay has so far been fairly resilient to our presence, much to our dissatisfaction')

City.create(name: 'test')

Motorhome.create(name: 'The Spruce', model: 'St. Xavier', mileage: '2 million', color: 'white with green trim', 
image: 'https://cdnb.artstation.com/p/assets/images/images/033/353/765/large/alex-waller-hybridspage17.jpg?1609296432')

Motorhome.create(name: 'Test', description: 'Awesome RV!!!')
# seeds.rb great for testing out data

Skatepark.create(features: 'Great Half Pipe')

