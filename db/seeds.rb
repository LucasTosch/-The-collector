# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User.destroy_all
# User.create!(email: '1234567@gmail.com', password: 'azerty63-1', username: 'tbayard', address: '230 rue paul bert, Lyon', zipcode: '69003', image: 'https://tse1.explicit.bing.net/th?id=OIP.QbYQOLvF6Mm5YRMwKHnxUAHaHa&pid=Api', player: true, trader: false)
# User.create!(email: '123456@gmail.com', password: 'azerty63-1', username: 'thenriet', address: '100 Rue Chevreul, Lyon', zipcode: '69007', image: 'https://tse1.explicit.bing.net/th?id=OIP.QbYQOLvF6Mm5YRMwKHnxUAHaHa&pid=Api', player: true, trader: false)
# User.create!(email: '123789@gmail.com', password: 'azerty63-1', username: 'ltoschini', address: '84 Rue du Pensionnat, Lyon', zipcode: '69003', image: 'https://tse1.explicit.bing.net/th?id=OIP.QbYQOLvF6Mm5YRMwKHnxUAHaHa&pid=Api', player: false, trader: true)
# User.create!(email: '1231011@gmail.com', password: 'azerty63-1', username: 'odebienne', address: '21 Avenue Georges Pompidou, Lyon', zipcode: '69003', image: 'https://tse1.explicit.bing.net/th?id=OIP.QbYQOLvF6Mm5YRMwKHnxUAHaHa&pid=Api', player: false, trader: true)


# Game.create!(name: 'Yugioh', description: "C'est l'heure du duel !", image: 'https://s2.qwant.com/thumbr/0x380/f/f/433eb09539e29fd08ba47442cee13b9bd66bfa3c8b757aec3ffe7fedc956f5/thumb-1920-128973.jpg?u=https%3A%2F%2Favatarfiles.alphacoders.com%2F128%2Fthumb-1920-128973.jpg&q=0&b=1&p=0&a=0')
# Game.create!(name: 'Pokemon', description: 'Attrapez-les tous !', image: 'https://s1.qwant.com/thumbr/0x0/2/a/7ce5e058c891719d437de02574f3f596fd105bbf56326b1c4f2a0b37d9480b/Pikachu-01-pokemon-svg-cut-file-free-300x300.jpg?u=https%3A%2F%2Fwww.svgfiles.us%2Fwp-content%2Fuploads%2FPikachu-01-pokemon-svg-cut-file-free-300x300.jpg&q=0&b=1&p=0&a=0')
# Game.create!(name: 'Magic The Gathering', description: 'La grandeur à tout prix !', image: 'https://s1.qwant.com/thumbr/0x380/3/f/00c9024d03ae676f7ed653016c4872fb2c7a8b787c57dfd83342786f7b4798/MTGlogo-font.jpg?u=https%3A%2F%2Ffontmeme.com%2Fimages%2FMTGlogo-font.jpg&q=0&b=1&p=0&a=0')


UserGame.destroy_all

UserGame.create!(user_id: 24, game_id: 6)
UserGame.create!(user_id: 25, game_id: 7)
UserGame.create!(user_id: 26, game_id: 8)
