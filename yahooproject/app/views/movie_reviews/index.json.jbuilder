json.array!(@movie_reviews) do |movie_review|
  json.extract! movie_review, :id, :nyt_movie_id, :headline, :display_title, :mpaa_rating, :trailer_url
  json.url movie_review_url(movie_review, format: :json)
end
