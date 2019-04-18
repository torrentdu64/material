# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
ed = User.create!(
  email: "sam@gmail.com",
  password: "123soleil"
)
boris = User.create!(
  email: "ben@gmail.com",
  password: "123soleil"
)
seb = User.create!(
  email: "nessa@gmail.com",
  password: "123soleil"
)
chat_room = ChatRoom.create!(name: "general")

message_1 = Message.create!(
  content: "Hello",
  chat_room: chat_room,
  user: ed
)
message_2 = Message.create!(
  content: "Hey",
  chat_room: chat_room,
  user: seb
)
message_3 = Message.create!(
  content: "Yo",
  chat_room: chat_room,
  user: boris
)
