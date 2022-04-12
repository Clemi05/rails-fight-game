# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning db'
Fighter.destroy_all

puts 'Create fighters'

Fighter.create(name: 'Zorro', hp: 120, attack: 40)
Fighter.create(name: 'Ichigo', hp: 100, attack: 50)
Fighter.create(name: 'Kisame', hp: 90, attack: 30)
Fighter.create(name: 'Levi', hp: 80, attack: 60)

puts 'Done!'
