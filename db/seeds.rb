# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# users
User.create(username: "Mashur", password: "password")
User.create(username: "Enia", password: "password")
User.create(username: "Laura", password: "password")
User.create(username: "Alvaro", password: "password")
User.create(username: "Max", password: "password")

# messages
Message.create(body: "Hi im a new user", user: User.first)
Message.create(body: "Hello, welcome", user: User.last)
Message.create(body: "Hi everyone", user: User.second)
Message.create(body: "Thank you for coming", user: User.second_to_last)

