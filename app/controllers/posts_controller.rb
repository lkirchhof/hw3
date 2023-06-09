class PostsController < ApplicationController
  
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
    @post.place_id = params["place_id"]
  end

  def create
    # start with a new Post
    @post = Post.new
    # assign user-entered form data to Post's columns
    @post["title"] = params["post"]["title"]
    @post["description"] = params["post"]["description"]
    @post["posted_on"] = params["post"]["posted_on"]
    @post["place_id"] = params["post"]["place_id"] 

    # save Post row
    @post.save
    
    # redirect user
    redirect_to "/places/#{@post["place_id"]}"
  end
end
