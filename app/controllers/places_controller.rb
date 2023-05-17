class PlacesController < ApplicationController
  def index
    #find all places
    @places = Place.all
    # render :template => "places/index"
  end

  def show
    # find a Place
    @place = Place.find_by({"id" => params["id"]})
    @posts = Post.where({"place_id" => params["id"]})
  end

  def new
    @place = Place.new
  end
  
  def create
    # start with a new Place
    @place = Place.new

    puts params["place"]

    # assign user-entered form data to Place's columns
    @place["name"] = params["place"]["name"]

    # save Place row
    @place.save

    # redirect user
    redirect_to "/places"
  end

end
