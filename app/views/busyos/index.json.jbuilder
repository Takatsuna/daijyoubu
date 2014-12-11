json.array!(@busyos) do |busyo|
  json.extract! busyo, :id, :name, :gl
  json.url busyo_url(busyo, format: :json)
end
