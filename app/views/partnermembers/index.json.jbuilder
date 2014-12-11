json.array!(@partnermembers) do |partnermember|
  json.extract! partnermember, :id, :shimeicode, :name
  json.url partnermember_url(partnermember, format: :json)
end
