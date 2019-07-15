# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create([
{
	first_name: "Carly",
	last_name: "Pecora",
	email: "carlyannpecora@gmail.com",
	password: "foo",
	photo_url: "nothing",
	bio: "i rule"
},
{
	first_name: "lindsey",
	last_name: "pecora",
	email: "lindster987@gmail.com",
	password: "foo",
	photo_url: "nothing",
	bio: "blah"
}

])

Conversation.create([
{
	title: "04-22-19",
	creator: "Carly"
},
{
	title: "General",
	creator: "lindsey"
}
])

Message.create([
{
	text: "Hello World",
	conversation_id: 1,
	user_id: 1
},
{
	text: "What's Up",
	conversation_id: 2,
	user_id: 2
}
])
