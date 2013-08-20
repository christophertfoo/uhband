json.array!(@permissions) do |permission|
  json.extract! permission, :read, :edit
  json.url permission_url(permission, format: :json)
end
