# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

  thriller = Tag.create(id: "1",name: "スリラー")
  comedy = Tag.create(id: "2",name: "コメディ")
  action = Tag.create(id: "3",name: "アクション")
  sf = Tag.create(id: "4",name: "SF")
  anime = Tag.create(id: "5",name: "アニメ")
  suspense = Tag.create(id: "7",name: "サスペンス")
  youth = Tag.create(id: "8",name: "青春")
  sports = Tag.create(id: "9",name: "スポーツ" )

  thriller_horror = thriller.children.create(id: "10",name: "ホラー")

  thriller_horror.children.create(id: "11",name: "スプラッター")
  thriller_horror.children.create(id: "12",name: "サイコホラー")
  thriller_horror.children.create(id: "13",name: "オカルト")
  thriller_horror.children.create(id: "14",name: "モンスター")
  
  comedy.children.create(id: "15", name: "スラップスティックコメディ")
  comedy.children.create(id: "16", name: "ロマンティックコメディ")

  action.children.create(id: "17", name: "カーアクション")
  action.children.create(id: "18", name: "カラテ")
  action.children.create(id: "19", name: "カンフー")
  action.children.create(id: "20", name: "ギャング")
  action.children.create(id: "21", name: "クライム")
  action.children.create(id: "22", name: "アドベンチャー")
  action.children.create(id: "23", name: "ポリスアクション")
  action.children.create(id: "24", name: "ミリタリーアクション")
  action.children.create(id: "25", name: "スパイアクション")
  action.children.create(id: "26", name: "ヤクザ")

  suspense.children.create(id: "27", name: "サイコサスペンス")


#  Movie.create(title: "test", titleruby: "てすと", image: File.open("/Users/yamashitatatsuya/downloads/.jpg"), synopsis: "test") 
Movie.create(id: "1",title: "鬼滅の刃無限列車編", titleruby: "きめつのやいばむげんれっしゃへん", image: File.open("/Users/yamashitatatsuya/downloads/kimetunoyaiba.jpg"), synopsis: "test", copyright: "©吾峠呼世晴／集英社・アニプレックス・ufotable", url: "") 
Movie.create(id: "2",title: "武器人間", titleruby: "ぶきにんげん", image: File.open("/Users/yamashitatatsuya/downloads/bukininngenn_.jpg"), synopsis: "test") 
Movie.create(id: "3",title: "容疑者Xの献身", titleruby: "ようぎしゃえっくすのけんしん", image: File.open("/Users/yamashitatatsuya/downloads/yougisya.jpg"), synopsis: "test", copyright: "", url: "") 
Movie.create(id: "4",title: "ゴジラ キングオブモンスターズ", titleruby: "ごじら きんぐおぶもんすたーず", image: File.open("/Users/yamashitatatsuya/downloads/godzilla.jpg"), synopsis: "test", copyright: "", url: "") 
Movie.create(id: "5",title: "MIDNIGHT MEET TRAIN", titleruby: "みっどないとみーととれいん", image: File.open("/Users/yamashitatatsuya/downloads/midnight.jpg"), synopsis: "test", copyright: "", url: "") 
Movie.create(id: "6",title: "ミスト", titleruby: "みすと", image: File.open("/Users/yamashitatatsuya/downloads/mist.jpg"), synopsis: "test", copyright: "", url: "") 
Movie.create(id: "7",title: "タッカーとデイル 史上最悪にツイてないヤツら", titleruby: "たっかーとでいる しじょうさいあくについてないやつら", image: File.open("/Users/yamashitatatsuya/downloads/takka-deiru.jpg"), synopsis: "test", copyright: "", url: "") 
Movie.create(id: "8",title: "アベンジャーズ エンドゲーム", titleruby: "あべんじゃーず えんどげーむ", image: File.open("/Users/yamashitatatsuya/downloads/endgame.jpg"), synopsis: "test", copyright: "", url: "") 


