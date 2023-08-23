puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
benjamin = {name: "Benjamin", address: "7 Boundary St, Antwerpen E2 7JE", phone_number: "5555-5555", category: "belgian"}
pierre =  {name: "Pierre", address: "56A Shoreditch High St, Paris E1 6PQ", phone_number: "4444-4444", category: "french"}
japa = {name: "Japa", address: "Ipanema", phone_number: "3333-3333", category: "japanese"}
lamole = {name: "La Mole", address: "Copacabana", phone_number: "2222-2222", category: "italian"}
meng = {name: "Meng", address: "Tijuca", phone_number: "1111-1111", category: "chinese"}

[benjamin, pierre, japa, lamole, meng].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
