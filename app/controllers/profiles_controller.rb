class ProfilesController < ApplicationController
  def index
    @profiles = Profile.all
  end
  
  def show
    id = params[:id] # retrieve profile ID from URI route
    @profiles = Profile.find(id) # look up profile by unique ID
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
  
  def about
    redirect_to staticpages
  end
  
  def home
    redirect_to staticpages 
  end
end