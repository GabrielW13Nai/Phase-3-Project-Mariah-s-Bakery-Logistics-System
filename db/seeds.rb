puts "🌱 Seeding data..."


# Create team details
2.times do
    Team.create(
        name: Faker::Ancient.god,
        location: ["Town", "Kilimani"].shuffle.first
        )

# Create rider details

7.times do 
    Rider.create(
        name: Faker::Name.name,
        id_no: Faker::IDNumber.south_african_id_number,
        nationality: "Kenyan",
        phone_number: Faker::PhoneNumber.cell_phone_in_e164,
        plate_number: Faker::IDNumber.valid
        )


        # Create random foods


    

    1.times do
        team = Team.order('RANDOM()').first
        rider = Rider.order('RANDOM()').first
   6.times do
        Order.create(
            name_of_order: Faker::Dessert.variety,
            time_of_order: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now, format: :default),
            delivery_time_in_minutes: rand(30..120),
            rider_id: rider.id,
            team_id: team.id)
   end

    end

end
end

puts "Done seeding 🌱 "