json.array!(@admins) do |admin|
  json.extract! admin, :id, :title, :link
  # ,:source_name
  json.url admin_url(admin, format: :json)
end
