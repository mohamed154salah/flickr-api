class HomeController < ApplicationController

  def new

  end
  def index
    api_key = ENV['FLICKR_API_KEY']
    user_id = params[:user_id]

    # Define the URL for the Flickr API endpoint
    url = "https://www.flickr.com/services/rest/?method=flickr.people.getPublicPhotos&api_key=#{api_key}&user_id=#{user_id}&format=json&nojsoncallback=1"

    # Send a GET request to the Flickr API endpoint using HTTParty
    response = HTTParty.get(url)

    # Convert the response content to JSON format
    @data = JSON.parse(response.body)


  end


end
