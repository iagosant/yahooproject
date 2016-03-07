json.array!(@stories) do |story|
  json.extract! story, :id, :blurb, :source, :when
  json.url story_url(story, format: :json)
end
