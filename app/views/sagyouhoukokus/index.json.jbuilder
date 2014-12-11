json.array!(@sagyouhoukokus) do |sagyouhoukoku|
  json.extract! sagyouhoukoku, :id, :sagyoushiji_id, :sagyoukakunin_id, :atena, :sashidashi, :youinjisseki_id, :jisshinaiyou, :sumi, :nengetsu
  json.url sagyouhoukoku_url(sagyouhoukoku, format: :json)
end
