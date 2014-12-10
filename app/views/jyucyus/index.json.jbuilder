json.array!(@jyucyus) do |jyucyu|
  json.extract! jyucyu, :id, :pjcode, :kenmei, :tantouteam, :pm, :start, :end, :kokyaku_id, :keiyakusyubetsu
  json.url jyucyu_url(jyucyu, format: :json)
end
