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