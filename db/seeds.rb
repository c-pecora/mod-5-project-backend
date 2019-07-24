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
	title: "04-22-19",
	creator: "Carly",
	purpose: "Channel for Mod 5",
})

second_convo = Conversation.create({
	title: "General",
	creator: "Lindsey",
	purpose: "General channel for everyone",
})

third_convo = Conversation.create({
	title: "Hello",
	purpose: "Introduce Yourself",
	creator: "Amy"
})

fourth_convo = Conversation.create({
	title: "Issues",
	purpose: "Ask for help here",
	creator: "Amy"
})


carly = User.create({
	first_name: "Carly",
	last_name: "Pecora",
	email: "carlyannpecora@gmail.com",
	password: "foo",
	photo_url: "nothing",
	bio: "i rule",
	conversation_ids: [first_convo.id, second_convo.id]
})

lindsey = User.create({
	first_name: "Lindsey",
	last_name: "Pecora",
	email: "lindster987@gmail.com",
	password: "bar",
	photo_url: "nothing",
	bio: "blah",
	conversation_ids: [first_convo.id, second_convo.id]
})

amy = User.create({
	first_name: "Amy",
	last_name: "Bonomo",
	email: "amyb@gmail.com",
	password: "bar",
	photo_url: "nothing",
	bio: "hey there",
	conversation_ids: [first_convo.id, second_convo.id, third_convo.id, fourth_convo.id]
})


first_message = Message.create({
	text: "Hello World",
	conversation_id: 1,
	user_id: 1
})

second_message = Message.create({
	text: "What's Up",
	conversation_id: 2,
	user_id: 2
})

third_message = Message.create({
	text: "C00L",
	conversation_id: 1,
	user_id: 1
})

fourth_message = Message.create({
	text: "Hey guys! Anyone need any help?",
	conversation_id: 4,
	user_id: 3
})

fifth_message = Message.create({
	text: "Let me know!",
	conversation_id: 4,
	user_id: 3
})

