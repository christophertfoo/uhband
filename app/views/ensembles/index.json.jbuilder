json.array!(@ensembles) do |ensemble|
  json.extract! ensemble, :name, :year
  json.url ensemble_url(ensemble, format: :json)
end
