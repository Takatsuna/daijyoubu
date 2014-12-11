json.array!(@youinwariates) do |youinwariate|
  json.extract! youinwariate, :id, :itakuhaken_id, :partnermember_id
  json.url youinwariate_url(youinwariate, format: :json)
end
