json.array!(@sagyoukakunins) do |sagyoukakunin|
  json.extract! sagyoukakunin, :id, :sagyouhoukoku_id, :atena, :sashidashi, :sumi, :nengetsu
  json.url sagyoukakunin_url(sagyoukakunin, format: :json)
end
