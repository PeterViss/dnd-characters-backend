# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Character.destroy_all

u1 = User.create(username: "Peter")
u2 = User.create(username: "Junaid")
u3 = User.create(username: "Sean")
u4 = User.create(username: "Natany")
u5 = User.create(username: "Nick")
u6 = User.create(username: "Errol")

char1 = Character.create!(name: "Krusk", gender: "male", background: "Gladiator", race: "half-orc", strength: 13, dexterity: 11, constitution: 10, intelligence: 7, wisdom: 8, charisma: 4, picture: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTk16ltQOHaU30iGu3BKGPDlAExA9VNwKRSE4z8YPC2ecbpnGvL", user_id: u1.id)
char2 = Character.create!(name: "Gimble", gender: "male", background: "Entertainer", race: "bard", strength: 3, dexterity: 7, constitution: 8, intelligence: 13, wisdom: 12, charisma: 15, picture: "https://i1.wp.com/www.allthingsdnd.com/wp-content/uploads/2018/03/GnomeBard.png?fit=822%2C1089&ssl=1",  user_id: u2.id)
char3 = Character.create!(name: "Vadania", gender: "female", background: "Pirate", race: "half-elf", strength: 10, dexterity: 11, constitution: 12, intelligence: 13, wisdom: 8, charisma: 10, picture: "https://66.media.tumblr.com/33819a6856b3d839e92d894a20ad2b2f/tumblr_p7rbxcLZnw1qf2swbo1_400.png", user_id: u3.id)
char4 = Character.create!(name: "Soveliss", gender: "male", background: "Gambler", race: "elf", strength: 9, dexterity: 12, constitution: 13, intelligence: 9, wisdom: 8, charisma: 11, picture: "https://66.media.tumblr.com/6c6af8f9a1367488056fa9c5668e7f76/tumblr_inline_ox2d8zLuit1qdq19t_540.jpg", user_id: u4.id)
char5 = Character.create!(name: "Ember", gender: "female", background: "Smuggler", race: "human", strength: 6, dexterity: 8, constitution: 10, intelligence: 14, wisdom: 9, charisma: 13, picture: "https://66.media.tumblr.com/dd687f7bc2ccbd54d41ffccf563c0683/tumblr_inline_oj971u6zRn1uudcoe_640.jpg", user_id: u5.id)
char6 = Character.create!(name: "Lidda", gender: "female", background: "Hermit", race: "halfling", strength: 3, dexterity: 6, constitution: 6, intelligence: 9, wisdom: 11, charisma: 10, picture: "https://img00.deviantart.net/64db/i/2016/343/5/a/scarred_lands__halfling_by_willobrien-dar3hwj.jpg", user_id: u6.id)

