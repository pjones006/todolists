# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Person.destroy_all 
  
Person.create! [             
{ first_name: "Paul" , last_name: "Jones" , age: 45 , login: "pjones006" , pass: "junk123" },
{ first_name: "John" , last_name: "Doe" , age: 55 , login: "jdoe007" , pass: "junk456" }]
