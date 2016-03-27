class CreateMovieReviews < ActiveRecord::Migration
  def change
    create_table :movie_reviews do |t|
      t.integer :nyt_movie_id
      t.text :headline
      t.string :display_title
      t.string :mpaa_rating
      t.string :trailer_url

      t.timestamps null: false
    end
  end
end
