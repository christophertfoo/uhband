json.array!(@rules) do |rule|
  json.extract! rule, :point_value
  json.url rule_url(rule, format: :json)
end
