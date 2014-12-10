json.array!(@kokyakus) do |kokyaku|
  json.extract! kokyaku, :id, :name
  json.url kokyaku_url(kokyaku, format: :json)
end
