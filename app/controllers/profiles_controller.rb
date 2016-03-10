class ProfilesController < ApplicationController
  def index
    @profiles = Profile.all
  end
  
  def show
  id = params[:id] # retrieve movie ID from URI route
  @profiles = Profile.find(id) # look up movie by unique ID
  #will render app/views/movies/show.html.haml by default
  end
  
  
  def new
  end
    
  def create
        #raise params.inspect
        @profiles = Profile.create!(params[:profiles])
        flash[:notice] = "#{@profiles.name} was successfully created."
        redirect_to profiles_path 
  end
  
  
  
end