json.array!(@events) do |event|
  json.extract! event, :name, :time
  json.url event_url(event, format: :json)
end
