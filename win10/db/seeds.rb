# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Level.create(level: 'Admin')
Level.create(level: 'Teacher')
Level.create(level: 'Aut')

User.create(username: 'admin', password: 'admin', level_id: 1)
User.create(username: 'teacher', password: 'teacher', level_id: 2)
User.create(username: 'aut1', password: 'aut1', level_id: 3)
User.create(username: 'aut2', password: 'aut2', level_id: 3)