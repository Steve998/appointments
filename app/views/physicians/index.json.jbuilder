json.array!(@physicians) do |physician|
  json.extract! physician, :id, :name, :speciality
  json.url physician_url(physician, format: :json)
end
