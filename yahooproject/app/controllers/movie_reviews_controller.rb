require 'HTTparty'
require 'json'
NYT_MOVIES_ID = ENV["nyt_movies_id"]


class MovieReviewsController < ApplicationController
  before_action :set_movie_review, only: [:show, :edit, :update, :destroy]

  # GET /movie_reviews
  # GET /movie_reviews.json
  def index
    @movie_reviews = MovieReview.all

    url = 'http://api.nytimes.com/svc/movies/v2/reviews/all.json?offset=40&order=by-title&api-key=ENV["nyt_movies_id"]'
    result = HTTParty.get(url)

    @recent_movies = result['results']

    @movie_title = []
    @mpaa_rating = []
    @headline = []

    @recent_movies.each do |movie|
      @movie_title << movie['display_title']
      @mpaa_rating << movie['mpaa_rating']
      @headline << movie['headline']
    end

    @movie_title.each do |new_title|
      new_movie = MovieReview.new
      new_movie.display_title = new_title
      new_movie.save
    end


  end

  # GET /movie_reviews/1
  # GET /movie_reviews/1.json
  def show
  end

  # GET /movie_reviews/new
  def new
    @movie_review = MovieReview.new
  end

  # GET /movie_reviews/1/edit
  def edit
  end

  # POST /movie_reviews
  # POST /movie_reviews.json
  def create
    @movie_review = MovieReview.new(movie_review_params)

    respond_to do |format|
      if @movie_review.save
        format.html { redirect_to @movie_review, notice: 'Movie review was successfully created.' }
        format.json { render :show, status: :created, location: @movie_review }
      else
        format.html { render :new }
        format.json { render json: @movie_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /movie_reviews/1
  # PATCH/PUT /movie_reviews/1.json
  def update
    respond_to do |format|
      if @movie_review.update(movie_review_params)
        format.html { redirect_to @movie_review, notice: 'Movie review was successfully updated.' }
        format.json { render :show, status: :ok, location: @movie_review }
      else
        format.html { render :edit }
        format.json { render json: @movie_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /movie_reviews/1
  # DELETE /movie_reviews/1.json
  def destroy
    @movie_review.destroy
    respond_to do |format|
      format.html { redirect_to movie_reviews_url, notice: 'Movie review was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movie_review
      @movie_review = MovieReview.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def movie_review_params
      params.require(:movie_review).permit(:nyt_movie_id, :headline, :display_title, :mpaa_rating, :trailer_url)
    end
end
