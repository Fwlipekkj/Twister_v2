

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.find_or_create_by(name:"Felipe", nickname:"fefe", email:"felipe@gmail.com", password:"102030fefe")

post = Post.find_or_create_by(message:Faker::Lorem.sentence, user:user)
post = Post.find_or_create_by(message:Faker::Lorem.sentence, user:user)
post = Post.find_or_create_by(message:Faker::Lorem.sentence, user:user)
post = Post.find_or_create_by(message:Faker::Lorem.sentence, user:user)
post = Post.find_or_create_by(message:Faker::Lorem.sentence, user:user)
post = Post.find_or_create_by(message:Faker::Lorem.sentence, user:user)
post = Post.find_or_create_by(message:Faker::Lorem.sentence, user:user)
post = Post.find_or_create_by(message:Faker::Lorem.sentence, user:user)
post = Post.find_or_create_by(message:Faker::Lorem.sentence, user:user)
post = Post.find_or_create_by(message:Faker::Lorem.sentence, user:user)
post = Post.find_or_create_by(message:Faker::Lorem.sentence, user:user)
post = Post.find_or_create_by(message:Faker::Lorem.sentence, user:user)
post = Post.find_or_create_by(message:Faker::Lorem.sentence, user:user)
post = Post.find_or_create_by(message:Faker::Lorem.sentence, user:user)
post = Post.find_or_create_by(message:Faker::Lorem.sentence, user:user)
post = Post.find_or_create_by(message:Faker::Lorem.sentence, user:user)
