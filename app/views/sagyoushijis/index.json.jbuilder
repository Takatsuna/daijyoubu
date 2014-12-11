json.array!(@sagyoushijis) do |sagyoushiji|
  json.extract! sagyoushiji, :id, :itakuhaken_id, :sagyouhoukoku_id, :atena, :sashidashi, :jisshinaiyou, :sumi, :nengetsu
  json.url sagyoushiji_url(sagyoushiji, format: :json)
end
