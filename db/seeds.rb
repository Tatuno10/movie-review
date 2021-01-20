# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

  thriller = Tag.create(:name=>"スリラー")
  comedy = Tag.create(:name=>"コメディ")
  action = Tag.create(:name=>"アクション")
  sf = Tag.create(:name=>"SF")
  anime = Tag.create(:name=>"アニメ")
  adventure = Tag.create(:name=>"アドベンチャー")
  suspense = Tag.create(:name=>"サスペンス")
  youth = Tag.create(:name=>"青春")

  thriller_horror = thriller.children.create(:name=>"ホラー")

  thriller_horror.children.create(:name=>"スプラッター")
  thriller_horror.children.create(:name=>"サイコホラー")
  thriller_horror.children.create(:name=>"オカルト")
  thriller_horror.children.create(:name=>"モンスター")

