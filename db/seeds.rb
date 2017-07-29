# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Administrator.create(name:"Admin da Silva", email: "admin@email.com",password:"123456",cpf:"11111111111")
Client.create(name:"João da Silva", email: "joao@email.com",password:"123456",cpf:"22222222222")
Vehicle.create(license_plate:"AAA9999", brand: "Volkswagen",model:"Fusca")

# create a Rent 
# Firts way
Client.first.rents.create(price: 350.79,vehicle: Vehicle.first)
# Second way
Rent.create(price: 350.79,vehicle: Vehicle.first, client: Client.first)