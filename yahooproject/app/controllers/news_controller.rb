class NewsController < ApplicationController

  require "awesome_print"

  def index
    #User information
    @user_profile_photo = User.find_by(id: 4).user_profile_photo_file_name
    user_zip = User.find_by(id:1).zip_code

    ret = HTTParty.get("http://api.openweathermap.org/data/2.5/weather?zip=#{user_zip},us&units=imperial&appid=c53f50fd7dcff059cd9e672b9da5986b")
    @temp = ret["main"]["temp"].round
    @location = ret["name"]

    #Featured Story information
    # @stoy_source = Admin.find_by(id:1).source_name
    @story_title = Admin.find_by(id:1).title
    @story_synopsis = Admin.find_by(id:1).synopsis
    @story_link = Admin.find_by(id:1).link
    @main_photo = Admin.find_by(id:1).main_photo

    @story = Story.all

    @story1_blurb = Admin.find_by(id:1).blurb
    @story1_when = Admin.find_by(id:1).when
    @story1_source = Admin.find_by(id:1).source

    #Second Featured Story information
    @second_featured_story_title = Admin.find_by(id:1).second_featured_story_title
    @second_featured_story_synopsis = Admin.find_by(id:1).second_featured_story_synopsis
    @second_featured_story_link = Admin.find_by(id:1).second_featured_story_link
    @second_story_photo = Admin.find_by(id:1).second_story_photo
  end
end
