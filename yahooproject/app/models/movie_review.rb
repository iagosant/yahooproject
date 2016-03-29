class MovieReview < ActiveRecord::Base
  validates :nyt_movie_id, :presence => true
  validates :headline, :presence => true
  validates :display_title, :presence => true
  validates :mpaa_rating, :presence => true
  validates :trailer_url, :presence => true
end
