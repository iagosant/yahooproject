class NewsController < ApplicationController

  require "awesome_print"


  def index

    # in form make post to index controller
    # will need create method if form succesful store zipcode in @user_loaction
    #
    # @user_loaction = "text field"
    #
    # ret = HTTParty.get('http://api.openweathermap.org/data/2.5/weather?zip="#{@user_location}",us&units=imperial&appid=c53f50fd7dcff059cd9e672b9da5986b')


    ret = HTTParty.get('http://api.openweathermap.org/data/2.5/weather?zip=33139,us&units=imperial&appid=c53f50fd7dcff059cd9e672b9da5986b')

    @temp = ret["main"]["temp"].round
    @location = ret["name"]

    #  ap location

    # @text = data["text"]
    # @date = data["date"]
    # @temp = data["temp"]
    #


  #
  # p "#{@temp.split.join.downcase}"
  end
end
