json.array!(@youinjissekis) do |youinjisseki|
  json.extract! youinjisseki, :id, :youinwariate_id, :sagyouhoukoku_id, :kadouhour, :kadoumin, :nengetsu
  json.url youinjisseki_url(youinjisseki, format: :json)
end
