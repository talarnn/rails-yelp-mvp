require 'faker'

Restaurant.destroy_all

5.times do
  restaurant = Restaurant.new(
    name: Faker::Games::Fallout.faction,
    address: Faker::Games::ElderScrolls.city,
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample,
    phone_number: Faker::Games::Fallout.quote
    )
  restaurant.save!
end

