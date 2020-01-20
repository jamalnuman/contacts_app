# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
system "say hello"
contact = Contact.new(
                    firstname: "Jamal", 
                    lastname: "Numan", 
                    email: "jnuman82@gmail.com", 
                    phone_number: "510-555-5555")

contact.save

contact = Contact.new(
                      firstname: Faker::Name.first_name,
                      lastname: Faker::Name.last_name, 
                      phone_number: Faker::PhoneNumber.phone_number)
contact.save