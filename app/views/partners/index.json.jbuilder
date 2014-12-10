json.array!(@partners) do |partner|
  json.extract! partner, :id, :name, :kihonkeiyaku
  json.url partner_url(partner, format: :json)
end
