# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Empezando seed"
Product.destroy_all

puts "Agregando 50 productos"

50.times do
    productos = Product.new(
        description: Faker::Food.dish, 
        departament: Faker::Food.spice,
        cost: (100..1000).to_a.sample,
        sale: (1000..5000).to_a.sample,    
        amount: (1..99).to_a.sample
    )
    productos.save!
    puts "Creamos el producto con id #{productos.id}"
end