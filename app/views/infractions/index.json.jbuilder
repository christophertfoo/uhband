json.array!(@infractions) do |infraction|
  json.extract! infraction, :name
  json.url infraction_url(infraction, format: :json)
end
