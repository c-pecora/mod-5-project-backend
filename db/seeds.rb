# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# User.create([
# {
# 	first_name: "Carly",
# 	last_name: "Pecora",
# 	email: "carlyannpecora@gmail.com",
# 	password: "foo",
# 	photo_url: "nothing",
# 	bio: "i rule"
# },
# {
# 	first_name: "lindsey",
# 	last_name: "pecora",
# 	email: "lindster987@gmail.com",
# 	password: "foo",
# 	photo_url: "nothing",
# 	bio: "blah"
# }

# ])

# Conversation.create([
# {
# 	title: "04-22-19",
# 	creator: "Carly"
# },
# {
# 	title: "General",
# 	creator: "lindsey"
# }
# ])

# Message.create([
# {
# 	text: "Hello World",
# 	conversation_id: 1,
# 	user_id: 1
# },
# {
# 	text: "What's Up",
# 	conversation_id: 2,
# 	user_id: 2
# }
# ])
first_convo = Conversation.create({
	title: "General",
	creator: "Carly",
	purpose: "General channel for everyone",
})

second_convo = Conversation.create({
	title: "04-22-19",
	creator: "Lindsey",
	purpose: "Channel for Mod 5",
})

third_convo = Conversation.create({
	title: "Resources",
	purpose: "Post any interesting coding resources!",
	creator: "Amy"
})

fourth_convo = Conversation.create({
	title: "Issues",
	purpose: "Ask for help here",
	creator: "Carly"
})


carly = User.create({
	first_name: "Carly",
	last_name: "Pecora",
	email: "carlyannpecora@gmail.com",
	password: "foo",
	photo_url: "https://res.cloudinary.com/dyd4wpdbo/image/upload/v1564680699/hello_world/txrg3gknsy4oeoqmwef0.jpg",
	bio: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
	conversation_ids: [first_convo.id, fourth_convo.id]
})

lindsey = User.create({
	first_name: "Lindsey",
	last_name: "Pecora",
	email: "lindster987@gmail.com",
	password: "bar",
	photo_url: "https://res.cloudinary.com/dyd4wpdbo/image/upload/v1564680893/hello_world/pslkwoanc294fcyjvjpj.jpg",
	bio: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
	conversation_ids: [first_convo.id, second_convo.id]
})

amy = User.create({
	first_name: "Amy",
	last_name: "Bonomo",
	email: "amyb@gmail.com",
	password: "bar",
	photo_url: "https://res.cloudinary.com/dyd4wpdbo/image/upload/v1564061790/hello_world/lnjtyflijeweedxggnit.jpg",
	bio: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
	conversation_ids: [first_convo.id, second_convo.id, third_convo.id]
})


first_message = Message.create({
	text: "Hey everyone! Welcome to the general channel.",
	conversation_id: 1,
	user_id: 1
})

second_message = Message.create({
	text: "It's Science Fair day!",
	conversation_id: 2,
	user_id: 2
})

fourth_message = Message.create({
	text: "Hey guys! Anyone need any help?",
	conversation_id: 4,
	user_id: 3
})

