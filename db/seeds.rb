# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
# User.create!(email: '1234567@gmail.com', password: 'azerty63-1', username: 'tbayard', address: '230 rue paul bert, Lyon', zipcode: '69003', image: 'https://tse1.explicit.bing.net/th?id=OIP.QbYQOLvF6Mm5YRMwKHnxUAHaHa&pid=Api', player: true, trader: false)
# User.create!(email: '123456@gmail.com', password: 'azerty63-1', username: 'thenriet', address: '100 Rue Chevreul, Lyon', zipcode: '69007', image: 'https://tse1.explicit.bing.net/th?id=OIP.QbYQOLvF6Mm5YRMwKHnxUAHaHa&pid=Api', player: true, trader: false)
# User.create!(email: '123789@gmail.com', password: 'azerty63-1', username: 'ltoschini', address: '84 Rue du Pensionnat, Lyon', zipcode: '69003', image: 'https://tse1.explicit.bing.net/th?id=OIP.QbYQOLvF6Mm5YRMwKHnxUAHaHa&pid=Api', player: false, trader: true)
# User.create!(email: '1231011@gmail.com', password: 'azerty63-1', username: 'odebienne', address: '21 Avenue Georges Pompidou, Lyon', zipcode: '69003', image: 'https://tse1.explicit.bing.net/th?id=OIP.QbYQOLvF6Mm5YRMwKHnxUAHaHa&pid=Api', player: false, trader: true)

Game.create(name: 'Yu-gi-oh', description: 'Yu-Gi-Oh est un jeu de cartes basé sur le manga du nom de Yu-Gi-Oh. Affrontez les autres joueurs en duel avec des cartes Monstres, Magiques et Pièges !', image: 'https://www.senscritique.com/_next/image?url=https%3A%2F%2Fmedia.senscritique.com%2Fmedia%2F000016446447%2F300%2Fyu_gi_oh_the_duelists_of_the_roses.jpg&w=640&q=75')
