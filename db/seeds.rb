# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'

# puts 'Cleaning up database...'

# Equipment.destroy_all
# Fighter.destroy_all
# puts 'Database cleaned'

# puts 'Creating fighters...'

fighter1 = Fighter.create(name: 'Zorro', hp: 120, attack: 25)
file = URI.open('https://res.cloudinary.com/clemi04/image/upload/v1649779285/development/zorro_ub5kbn.jpg')
fighter1.photo.attach(io: file, filename: 'zorro.png', content_type: 'img/png')
fighter1.save!

fighter2 = Fighter.create(name: 'Ichigo', hp: 100, attack: 30)
file = URI.open('https://res.cloudinary.com/clemi04/image/upload/v1649779285/development/ichigo_psnekk.jpg')
fighter2.photo.attach(io: file, filename: 'ichigo.png', content_type: 'img/png')
fighter2.save!

fighter3 = Fighter.create(name: 'Kisame', hp: 90, attack: 35)
file = URI.open('https://res.cloudinary.com/clemi04/image/upload/v1649779285/development/kisame_r4jyll.jpg')
fighter3.photo.attach(io: file, filename: 'kisame.png', content_type: 'img/png')
fighter3.save!

fighter4 = Fighter.create(name: 'Levi', hp: 80, attack: 39)
file = URI.open('https://res.cloudinary.com/clemi04/image/upload/v1649779285/development/levi_seyhaa.jpg')
fighter4.photo.attach(io: file, filename: 'levi.png', content_type: 'img/png')
fighter4.save!

fighter5 = Fighter.create(name: 'Tanjiro', hp: 210, attack: 20)
file = URI.open('https://res.cloudinary.com/clemi04/image/upload/v1649778651/development/qpmimsq4qkxhuokexsqh2691ou5r.jpg')
fighter5.photo.attach(io: file, filename: 'tanjiro.png', content_type: 'img/png')
fighter5.save!

puts 'DONE! Fighters created with success!'

puts 'Create equipments...'

equipment1 = Equipment.create(name: 'Katana', attack: 15, defense: 0)
equipment1.save!

equipment2 = Equipment.create(name: 'Shild', attack: 0, defense: 20)
equipment2.save!

equipment3 = Equipment.create(name: 'Kunai', attack: 5, defense: 0)
equipment3.save!

equipment4 = Equipment.create(name: 'Bow', attack: 8, defense: 0)
equipment4.save!

puts 'DONE! Equipments created with success!'
