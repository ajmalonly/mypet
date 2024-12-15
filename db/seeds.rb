# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# db/seeds.rb

require 'faker'

# Clear existing records to avoid duplicates
Pet.destroy_all

puts "Seeding pets..."

# Define the number of pets to create

species = ['dog', 'cat', 'rabbit', 'snake', 'turtle']

NUMBER_OF_PETS = 20

NUMBER_OF_PETS.times do
  Pet.create!(
    name: Faker::FunnyName.name,  
    species: species.sample, 
    image_url: "https://picsum.photos/id/#{rand(1..1000)}/200/300",
    found_on: Faker::Date.backward(days: 30) # Found within the last 30 days
  )
end


puts "Seeding complete!"











puts "Seed completed"