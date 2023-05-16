class PlacesController < ApplicationController
  def index
    # htlm =  
    # render :inline => html
    render :template => "places/index"
  end
end
