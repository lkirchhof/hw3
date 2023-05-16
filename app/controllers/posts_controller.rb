class PostsController < ApplicationController
  def index
    # htlm =  
    # render :inline => html
    render :template => "posts/index"
  end
end
