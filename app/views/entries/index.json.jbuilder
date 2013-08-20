json.array!(@entries) do |entry|
  json.extract! entry, :note
  json.url entry_url(entry, format: :json)
end
