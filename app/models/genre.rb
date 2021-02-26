class Genre < ActiveHash::Base
  self.data = [
    { id: 1, name: '泣ける' },
    { id: 2, name: '笑える' },
    { id: 3, name: '驚いた' },
    { id: 4, name: 'すっきりした' },
    { id: 5, name: 'ほっこりした' },
    { id: 6, name: '怖い' },
    { id: 7, name: '手に汗にぎった' },
  ]
end
