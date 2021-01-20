# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

  horror = Tag.create(:name=>"ホラー")

  horror_comedy = horror.children.create(:name=>"ギャグホラー")

  horror_comedy_horror = horror_comedy.children.create(:name=>"ギャグホラーホラー")

  horror_comedy_horror.children.create(:name=>"長い")