# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Book.destroy_all
Reviewer.destroy_all

150.times{Book.create! name: Faker::Book.title ,author:Faker::Book.author}

Book.create! [
	{name: "Hobbit",author: "Tolkien"},
	{name: "Witcher",author: "Sapkwoski"},
	{name: "Ice Garden",author: "Grzedowicz"},
	{name: "Klamca",author: "Dunno"}
]

eloquent = Book.find_by name:"Hobbit"
eloquent.notes.create! [
	{title:"Wow",note:"nice one wowowow"},
	{title:"Bullshit",note:"peace of shit"}
]

reviewers = Reviewer.create! [
	{name:"Tom",password:"pass123"},
	{name:"Jon",password:"someShiet"}
]

Book.all.each do |book|
	book.reviewer=reviewers.sample
	book.save!
end