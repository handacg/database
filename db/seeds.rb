# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
10.times do |index|
  user = User.create!(first_name: Faker::Company.name, last_name: Faker::Company.name, email: Faker::Internet.email)
end

5.times do |index|
	categorie = Categorie.create!(name: Faker::Company.name)
end

10.times do |index|
	article = Article.create!(title: Faker::Music.album, content: Faker::Lebowski.quote, user_id: Faker::Number.between(12, 21), categorie_id: Faker::Number.between(1,5))
end


15.times do |index|
	like = Like.create!(user_id: Faker::Number.between(User.first.id, User.last.id), article_id: Faker::Number.between(Article.first.id, Article.last.id))
	end

15.times do |index|
	commentaire = Commentaire.create!(content: Faker::Lorem.sentence, user_id: Faker::Number.between(User.first.id,User.last.id), article_id: Faker::Number.between(Article.first.id,Article.last.id))
end	


