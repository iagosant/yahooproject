json.array!(@users) do |user|
  json.extract! user, :id, :zip_code
  json.url user_url(user, format: :json)
end
