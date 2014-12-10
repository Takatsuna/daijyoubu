json.array!(@itakuhakens) do |itakuhaken|
  json.extract! itakuhaken, :id, :kessaibango, :kessaikenmei, :start, :end, :ukeireninzu, :jyucyu_id, :partner_id
  json.url itakuhaken_url(itakuhaken, format: :json)
end
